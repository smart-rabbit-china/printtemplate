/**
 * AngularJS统一请求（Content-Type：application/json）
 * @param $http
 * @param param
 */
function baseRequestForm ($http, param) {
    if (!param.method) {
        param.method = "GET";
    } else {
        param.data = JSON.stringify(param.data);
    }
    $http({
        url: param.url,
        method: param.method,
        data: param.data
    }).then(
        function (res) {
            param.sCallback && param.sCallback(res);
        },
        function (res) {
            console.log("error: ", res);
        }
    );
}

/**
 * 判断对象属性不为空
 *   object           = null  false
 *   object[property] = null  false
 *   object[property] = ""    false
 * @param object   对象
 * @param property 属性
 * @return boolean
 */
function isNotEmpty (object, property) {
    return object != null && object.hasOwnProperty(property) && object[property] != null && object[property] !== "";
}

/**
 * 横线连接转换驼峰
 * @param value 横线连接
 * @return {string}
 */
function lineToHump(value) {
    return value.replace(/\-(\w)/g, function(all, letter){
        return letter.toUpperCase();
    });
}

/**
 * 驼峰转换横线连接
 * @param value 驼峰
 * @returns {string}
 */
function humpToLine(value) {
    return value.replace(/([A-Z])/g,"-$1").toLowerCase();
}

/**
 * 根据参数名获取地址栏URL里的参数
 * @param name 参数名
 * @return {string}
 */
function getUrlQueryString(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
    var r = window.location.search.substr(1).match(reg);
    return r !== null ? unescape(r[2]) : null;
}
