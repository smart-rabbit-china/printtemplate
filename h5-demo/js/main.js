var myApp = angular.module('myApp', []);
// 使用代理请求
var baseUrl = "http://127.0.0.1:81/";
var shopId = getUrlQueryString("shopId") || 1;
var templateId = getUrlQueryString("templateId") || 1;
/**
 * This controller is used to manage the global
 * @param $scope
 * @param $http
 */
myApp.controller('myCtrl', ['$scope', '$http', function ($scope, $http) {
    // 加载系统模板组件
    var param = {
        url: baseUrl + "printerTicket/systemComponents?templateId=" + templateId,
        sCallback: function (res) {
            const data = res.data;
            if (data.errCode !== undefined) {
                console.log(data.errMsg)
                return;
            }
            /*
              阶段一：准备模板model层数据源
                1.根据打印模板类型（documentType），请求系统模板组件（system-component）作为数据源。
                2.从源中抽取父组件，作为左侧面板控件（panelModules）。
                3.从源中抽取所有组件，以模块>行>列的格式进行排序，组成右侧预览组件数据源（templateModules）。
                4.从源中抽取父组件id，封装公共对象（componentEnableStaus）绑定左右两侧父组件，用于启用/禁用状态联动，默认初始为禁用状态。
                5.记录模板类型$scope.documentType
            */
            var modules = data.data,
                panelModules = [],
                templateModules = [],
                componentEnableStaus = {};

            for (var i = 0; i < modules.length; i++) {
                var module = modules[i],
                    panelComponents = [],
                    rows = [];
                for (var j = 0; j < module.rows.length; j++) {
                    var component = module.rows[j];
                    // 左侧面板控件
                    // 公共对象
                    if (component.hasOwnProperty("component")) {
                        panelComponents.push(component.component);
                        componentEnableStaus[component.component.id] = false;
                    } else {
                        panelComponents.push(component);
                        componentEnableStaus[component.id] = false;
                    }
                    // 右侧预览组件
                    if (!component.hasOwnProperty("component")) {
                        if (rows.length > 0) {
                            var rowNum = component.row;
                            var recentRowColumn = rows[rows.length - 1].components[0];
                            if (rowNum === recentRowColumn.row) {
                                rows[rows.length - 1].components.push(component);
                                continue;
                            }
                        }
                    }
                    var row = {};
                    var components = [];
                    components.push(component);
                    row.components = components;
                    if (component.hasOwnProperty("component")) {
                        row.sort = component.component.sort;
                        row.type = component.component.type;
                    } else {
                        row.sort = component.sort;
                        row.type = component.type;
                    }
                    rows.push(row);
                }
                var panelModule = {};
                panelModule.moduleId = module.moduleId;
                panelModule.moduleName = module.moduleName;
                panelModule.moduleDescribe = module.moduleDescribe;
                panelModule.sort = module.sort;
                panelModule.components = panelComponents;
                panelModules.push(panelModule);

                var templateModule = {};
                templateModule.moduleId = module.moduleId;
                templateModule.moduleName = module.moduleName;
                templateModule.moduleDescribe = module.moduleDescribe;
                templateModule.sort = module.sort;
                templateModule.rows = rows;
                templateModules.push(templateModule);
            }
            /*
                阶段二：模板view视图层渲染
                  1.提取面板数据源，渲染左侧控制面板视图
                  2.提取预览组件数据源，渲染右侧预览组件视图
                  3.提取公共状态对象，绑定两侧父组件。
             */
            $scope.panelModules = panelModules;
            $scope.templateModules = templateModules;
            $scope.componentEnableStaus = componentEnableStaus;
            $scope.documentType = 1;
        }
    };
    baseRequestForm($http, param);

    // 加载自定义模板组件（延迟100ms）
    param = {
        url: baseUrl + "printerTicket/previewComponents?templateId=" + templateId,
        sCallback: function (res) {
            const data = res.data;
            if (data.errCode !== undefined) {
                console.log(data.errMsg)
                return;
            }
            /*
                阶段三：加载自定义模板数据源
                  1.通过模板id（templateId）请求自定义模板组件。
                  2.根据自定模板数据源，更新公共对象（componentEnableStaus）父组件的启用/禁用状态。
                  3.根据自定义模板数据源，更新系统预览组件（templateModules）的CSS样式
                  4.到此，自定义模板数据源 的使命到此结束。以后提到的模板、模块、组件的概念，都是指系统组件，所有model层的操作，都是围绕系统组件数据源展开。
             */
            rerenderComponentEnableStatus(data.data);
            rerenderComponentValueStyle(data.data);
        }
    };
    setTimeout(function () {
        baseRequestForm($http, param);
    }, 200);

    /**
     * 更新公共对象父组件的启用/禁用状态
     * @param previewModules 自定义模板组件
     */
    function rerenderComponentEnableStatus (previewModules) {
        /*对象引用传递*/
        var componentEnableStaus = $scope.componentEnableStaus;
        for (var i = 0; i < previewModules.length; i++) {
            var previewModule = previewModules[i];
            for (var j = 0; j < previewModule.rows.length; j++) {
                var row = previewModule.rows[j];
                for (var n = 0; n < row.components.length; n++) {
                    var component = row.components[n];
                    if (component.component) {
                        if (component.component.enable === 1) {
                            /*注意：使用系统组件id*/
                            componentEnableStaus[component.component.systemComponentId] = true;
                        }
                    } else {
                        if (component.enable === 1) {
                            componentEnableStaus[component.systemComponentId] = true;
                        }
                    }
                }
            }
        }
    }

    /**
     * 更新系统预览组件的CSS样式
     * @param previewModules 自定义模板组件
     */
    function rerenderComponentValueStyle (previewModules) {
        for (var i = 0; i < previewModules.length; i++) {
            var previewModule = previewModules[i].rows;
            for (var j = 0; j < previewModule.length; j++) {
                var rows = previewModule[j].components;
                for (var n = 0; n < rows.length; n++) {
                    var component = rows[n];
                    if (component.hasOwnProperty("component")) {
                        if (isNotEmpty(component, "category")) {
                            /*注意：使用系统组件id*/
                            updateComponentValueStyle(component.category.moduleId, component.category.systemComponentId, component.category.valueStyle);
                        }
                        if (isNotEmpty(component, "tableTitle")) {
                            updateComponentValueStyle(component.tableTitle.moduleId, component.tableTitle.systemComponentId, component.tableTitle.valueStyle);
                        }
                        if (isNotEmpty(component, "thead")) {
                            var theadRowColumns = component.thead.tableRowSet.columnSet;
                            for (var m = 0; m < theadRowColumns.length; m++) {
                                updateComponentValueStyle(theadRowColumns[m].moduleId, theadRowColumns[m].systemComponentId, theadRowColumns[m].valueStyle);
                            }
                        }
                        if (isNotEmpty(component, "tbody")) {
                            var tbodyRows = component.tbody.tableRowSet;
                            for (var k = 0; k < tbodyRows.length; k++) {
                                var tbodyRowColumns = tbodyRows[k].columnSet;
                                for (var h = 0; h < tbodyRowColumns.length; h++) {
                                    updateComponentValueStyle(tbodyRowColumns[h].moduleId, tbodyRowColumns[h].systemComponentId, tbodyRowColumns[h].valueStyle);
                                }
                            }
                        }
                    } else {
                        updateComponentValueStyle(component.moduleId, component.systemComponentId, component.valueStyle);
                    }
                }
            }
        }
    }

    /**
     * 更新组件valueStyle值
     * @param moduleId          模块id
     * @param systemComponentId 系统组件id
     * @param valueStyle        组件valueStyle值
     */
    function updateComponentValueStyle (moduleId, systemComponentId, valueStyle) {
        var templateModules = $scope.templateModules;
        /*跳出循环*/
        outer:
        for (var i = 0; i < templateModules.length; i++) {
            var templateModule = templateModules[i];
            if (templateModule.moduleId === moduleId) {
                for (var j = 0; j < templateModule.rows.length; j++) {
                    var templateRows = templateModule.rows[j].components;
                    for (var n = 0; n < templateRows.length; n++) {
                        var templateComponent = templateRows[n];
                        if (templateComponent.hasOwnProperty("component")) {
                            if (isNotEmpty(templateComponent, "category")) {
                                if (templateComponent.category.id === systemComponentId) {
                                    templateComponent.category.valueStyle = valueStyle;
                                    break outer;
                                }
                            }
                            if (isNotEmpty(templateComponent, "tableTitle")) {
                                if (templateComponent.tableTitle.id === systemComponentId) {
                                    templateComponent.tableTitle.valueStyle = valueStyle;
                                    break outer;
                                }
                            }
                            if (isNotEmpty(templateComponent, "thead")) {
                                var theadRowColumns = templateComponent.thead.tableRowSet.columnSet;
                                for (var m = 0; m < theadRowColumns.length; m++) {
                                    if (theadRowColumns[m].id === systemComponentId) {
                                        theadRowColumns[m].valueStyle = valueStyle;
                                        break outer;
                                    }
                                }
                            }
                            if (isNotEmpty(templateComponent, "tbody")) {
                                var tbodyRows = templateComponent.tbody.tableRowSet;
                                for (var k = 0; k < tbodyRows.length; k++) {
                                    var tbodyRowColumns = tbodyRows[k].columnSet;
                                    for (var h = 0; h < tbodyRowColumns.length; h++) {
                                        if (tbodyRowColumns[h].id === systemComponentId) {
                                            tbodyRowColumns[h].valueStyle = valueStyle;
                                            break outer;
                                        }
                                    }
                                }
                            }
                        } else {
                            if (templateComponent.id === systemComponentId) {
                                templateComponent.valueStyle = valueStyle;
                                break outer;
                            }
                        }
                    }
                }
            }
        }
    }

    /**
     * 阶段六：生成自定义模板
     *   1.检查模板名称是否唯一
     *   2.生成打印模板预览图（jpg）
     *   3.根据公共对象$scope.componentEnableStaus清理 $scope.templateModules 中禁用的组件
     *   4.请求服务器
     */
    $scope.buildCustomTemplate = function () {
        if (!isNotEmpty($scope, "moduleName")) {
            alert("模板名称不能为空");
            return;
        }
        /*深拷贝*/
        var templateModules = angular.copy($scope.templateModules),
            componentEnableStaus = $scope.componentEnableStaus,
            postData = {};
        for (var i = 0; i < templateModules.length; i++) {
            var templateModule = templateModules[i].rows;
            for (var j = templateModule.length - 1; j > -1; j--) {
                var templateRow = templateModule[j].components;
                for (var k = templateRow.length - 1; k > -1; k--) {
                    var templateComponent = templateRow[k];
                    if (templateComponent.hasOwnProperty("component")) {
                        if (!componentEnableStaus[templateComponent.component.id]) {
                            templateRow.splice(k, 1);
                        }
                    } else {
                        if (!componentEnableStaus[templateComponent.id]) {
                            templateRow.splice(k, 1);
                        }
                    }
                }
                if (templateRow.length < 1) {
                    templateModule.splice(j, 1);
                }
            }
        }
        // Todo: 生成预览图
        var templatePreviewPictureUrl = "";

        postData.shopId = shopId;
        postData.operatorId = 0;
        postData.name = $scope.moduleName;
        postData.documentType = $scope.documentType;
        postData.url = templatePreviewPictureUrl;
        postData.modules = JSON.stringify(templateModules);

        var param = {
            url: baseUrl + "printerTicket/save",
            method: "POST",
            data: postData,
            sCallback: function (res) {
                const data = res.data;
                console.log(data);
                if(data.errCode !== undefined) {
                    alert(data.errMsg)
                    return;
                }
                alert("添加成功，templateId = " + data.data.templateId)
            }
        };
        baseRequestForm($http, param);
    };

    /**
     * 删除当前模板
     */
    $scope.removeTemplate = function () {
        var param = {
            url: baseUrl + "printerTicket?shopId=" + shopId + "&templateId=" + templateId,
            method: "DELETE",
            sCallback: function (res) {
                const data = res.data;
                console.log(data.data)
                if (data.errMsg !== undefined) {
                    alert(data.errMsg)
                    return;
                }
                alert("删除成功！")
                window.location.reload();
            }
        };
        baseRequestForm($http, param);
    };
}]);

/**
 * Register style filters
 */
myApp.filter("filterStyle", function () {
    return function (input) {
        var valueStyleStr = "";
        if ("valueStyle" in input && input.valueStyle != null && input.valueStyle !== "") {
            var valueStyle = JSON.parse(input.valueStyle);
            angular.forEach(valueStyle, function (value, key) {
                if (key === "fontSize") {
                    /*临时参数*/
                    if (value < 10) {
                        value = 14;
                    }
                    value = value + "px";
                }
                valueStyleStr += humpToLine(key) + ":" + value + ";";
            });
        }
        if ("width" in input && input.width != null && input.width !== "") {
            valueStyleStr += "width:" + input.width + "%;";
        }
        return valueStyleStr;
    }
});

/**
 * This controller is used to manage the panel-component status
 * @param $scope
 * @param $http
 */
myApp.controller('panelCtrl', ['$scope', function ($scope) {
    /**
     * 切换启用/禁用状态
     * @param parentId   父组件id
     * @param showStatus true-启用，false-禁用
     * @param enable 启用状态：0 未启用 1 启用
     */
    $scope.switchComponentStatus = function (parentId, showStatus, enable) {
        if (enable === 1) {
            var componentEnableStaus = $scope.componentEnableStaus;
            componentEnableStaus[parentId] = !showStatus;
            $scope.componentEnableStaus = componentEnableStaus;
        }
    };

}]);

/**
 * This controller is used to manage the preview-component style
 * @param $scope
 * @param $http
 */
myApp.controller('previewCtrl', ['$scope', function ($scope) {
    /**
     * 阶段四：预览组件获取焦点
     *   1.从$scope中提取 焦点 组件信息，清除焦点组件样式。
     *   2.将新的焦点组件存储到$scope.activeComponent中，并且设置高亮显示。
     *   3.更新焦点组件属性$scope.valueStyle
     * @param templateComponent 组件元素（引用传递）
     */
    $scope.doTemplateComponentActive = function (templateComponent) {
        /*焦点组件*/
        var activeComponent = $scope.activeComponent,
            valueStyle = {};
        $scope.activeComponent = templateComponent;
        if (typeof activeComponent !== "undefined") {
            /*清除焦点样式*/
            valueStyle = JSON.parse(activeComponent.valueStyle);
            if (valueStyle.hasOwnProperty("border") && valueStyle.hasOwnProperty("backgroundColor")) {
                delete valueStyle.border;
                delete valueStyle.backgroundColor;
                activeComponent.valueStyle = JSON.stringify(valueStyle);
            }
        }
        if (!isNotEmpty(templateComponent, "valueStyle")) {
            templateComponent.valueStyle = '{}';
        }
        valueStyle = JSON.parse(templateComponent.valueStyle);
        if (!valueStyle.hasOwnProperty("border")) {
            valueStyle.border = "1px solid orange";
            valueStyle.backgroundColor = "rgba(247, 248, 74, 0.67)";
        }
        templateComponent.valueStyle = JSON.stringify(valueStyle);

        /*焦点组件的样式*/
        $scope.activeTemplateValueStyle = valueStyle;
    };
    /**
     * 阶段五：焦点组件绑定属性面板
     *   1.绑定焦点组件属性$scope.valueStyle到属性面板
     *   2.监听属性面板调整属性，实时刷新焦点组件属性。
     */
    $scope.updateTemplateProperty = function () {
        var valueStyle = $scope.activeTemplateValueStyle;
        $scope.activeComponent.valueStyle = JSON.stringify(valueStyle);
    };
}]);
