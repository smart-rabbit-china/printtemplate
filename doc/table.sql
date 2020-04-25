CREATE DATABASE IF NOT EXISTS `print_template` CHARACTER SET = utf8mb4;

-- 打印机表
CREATE TABLE IF NOT EXISTS `printer_device` (
    `id` int(11) UNSIGNED AUTO_INCREMENT,
    `device_name` varchar(30) NOT NULL DEFAULT '' COMMENT '名称',
    `printer_device_type` tinyint NOT NULL DEFAULT 0 COMMENT '打印机类型：1-服务器 2-网络打印机',
    `address` varchar(20) NOT NULL DEFAULT '' COMMENT 'ip地址',
    `is_delete` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否状态：0-未删除 1-删除',
    `shop_id` int(11) NOT NULL DEFAULT 0 COMMENT '店铺id',
    `creator_id` int(11) DEFAULT 0 COMMENT '创建人',
    `creator_name` varchar(30) DEFAULT '' COMMENT '创建人姓名',
    `updator_id` int(11) DEFAULT 0 COMMENT '修改人',
    `updator_name` varchar(30) DEFAULT '' COMMENT '修改人姓名',
    `create_time` datetime DEFAULT NULL,
    `update_time` datetime DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `idx_printer_device_shop_id`(`shop_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = utf8mb4 COMMENT '打印机表';

-- 出票口表
CREATE TABLE IF NOT EXISTS `printer_kitchen` (
    `id` int(11) UNSIGNED AUTO_INCREMENT,
    `name` varchar(30) NOT NULL DEFAULT '' COMMENT '出票口名称',
    `printer_device_id` int NOT NULL DEFAULT 0 COMMENT '打印机id',
    `is_table` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否配置桌台区域：0-未配置 1-配置',
    `is_goods` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否配置打印菜品：0-未配置 1-配置',
    `is_delete` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否删除：0-未删除 1-删除',
    `shop_id` int(11) NOT NULL DEFAULT 0 COMMENT '店铺id',
    `creator_id` int DEFAULT 0 COMMENT '创建人',
    `creator_name` varchar(30) DEFAULT '' COMMENT '创建人姓名',
    `updator_id` int DEFAULT 0 COMMENT '修改人',
    `updator_name` varchar(30) DEFAULT '' COMMENT '修改人姓名',
    `create_time` datetime DEFAULT NULL,
    `update_time` datetime DEFAULT NULL,
    PRIMARY KEY(`id`),
    KEY `idx_printer_kitchen_shop_id`(`shop_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = utf8mb4 COMMENT '出票口表';

-- 出票口票据类型表
CREATE TABLE IF NOT EXISTS `printer_kitchen_document_type_rules` (
    `id` int(11) UNSIGNED AUTO_INCREMENT,
    `printer_kitchen_id` int(11) NOT NULL DEFAULT 0 COMMENT '出票口id',
    `document_type_id` int NOT NULL DEFAULT 0 COMMENT '票据类型',
    `number` tinyint NOT NULL DEFAULT 1 COMMENT '打印份数',
    `printer_type` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '打印方式：1-一纸多菜 2-一纸一菜 3-各打一张',
    `is_delete` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否删除：0-未删除 1-删除',
    `create_time` datetime DEFAULT NULL,
    `update_time` datetime DEFAULT NULL,
    PRIMARY KEY(`id`),
    KEY `idx_kitchen_document_type_printer_kitchen_id`(`printer_kitchen_id`),
    KEY `idx_kitchen_document_type_document_type_id`(`document_type_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = utf8mb4 COMMENT '出票口票据类型表';

-- 出票口配置桌台区域表
CREATE TABLE IF NOT EXISTS `printer_kitchen_table_rules` (
    `id` int(11) UNSIGNED AUTO_INCREMENT,
    `printer_kitchen_id` int(11) NOT NULL DEFAULT 0 COMMENT '出票口id',
    `table_id` int(11) NOT NULL DEFAULT 0 COMMENT '桌台号',
    `is_delete` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否删除：0-未删除 1-删除',
    `create_time` datetime DEFAULT NULL,
    `update_time` datetime DEFAULT NULL,
    PRIMARY KEY(`id`),
    KEY `idx_kitchen_table_rules_printer_kitchen_id`(`printer_kitchen_id`),
    KEY `idx_kitchen_table_rules_table_id`(`table_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = utf8mb4 COMMENT '出票口配置桌台区域表';

-- 出票口配置打印菜品表
CREATE TABLE IF NOT EXISTS `printer_kitchen_goods_rules` (
    `id` int(11) UNSIGNED AUTO_INCREMENT,
    `printer_kitchen_id` int(11) NOT NULL DEFAULT 0 COMMENT '出票口id',
    `goods_id` int(11) NOT NULL DEFAULT 0 COMMENT '商品id',
    `stock_id` int(11) NOT NULL DEFAULT 0 COMMENT '规格id',
    `is_delete` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否删除：0-未删除 1-删除',
    `create_time` datetime DEFAULT NULL,
    `update_time` datetime DEFAULT NULL,
    PRIMARY KEY(`id`),
    KEY `idx_kitchen_goods_rules_printer_kitchen_id`(`printer_kitchen_id`),
    KEY `idx_kitchen_goods_rules_goods_id`(`goods_id`),
    KEY `idx_kitchen_goods_rules_stock_id`(`stock_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = utf8mb4 COMMENT '出票口配置打印菜品表';

-- 打印模板类型表
CREATE TABLE IF NOT EXISTS `printer_document_type` (
    `id` INT UNSIGNED AUTO_INCREMENT,
    `name` VARCHAR(10) NOT NULL DEFAULT '' COMMENT '类型名称',
    `status` TINYINT NOT NULL DEFAULT 0 COMMENT '状态：0-禁用 1-启用',
    `create_time` datetime DEFAULT NULL COMMENT '添加时间',
    `update_time` datetime DEFAULT NULL COMMENT '更新时间',
    PRIMARY KEY(`id`),
    KEY `idx_name`(`name`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = utf8mb4 COMMENT '打印模板类型表';

-- 打印模板模块表
CREATE TABLE IF NOT EXISTS `printer_template_module` (
    `id` INT UNSIGNED AUTO_INCREMENT,
    `module_name` VARCHAR(10) NOT NULL COMMENT '模块名称',
    `module_describe` VARCHAR(30) NOT NULL COMMENT '模块描述',
    `document_type` INT NOT NULL COMMENT '模板类型',
    `sort` INT DEFAULT 0 COMMENT '排序',
    `create_time` datetime DEFAULT NULL COMMENT '添加时间',
    `update_time` datetime DEFAULT NULL COMMENT '更新时间',
    PRIMARY KEY(`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = utf8mb4 COMMENT '打印模板模块表';

-- 打印模板系统组件表
CREATE TABLE IF NOT EXISTS `printer_system_component`(
    `id` INTEGER UNSIGNED AUTO_INCREMENT,
    `module_id` INT NOT NULL DEFAULT 0 COMMENT '模块id',
    `parent_id` INT NOT NULL DEFAULT 0 COMMENT '父组件id',
    `ref_id` INT NOT NULL DEFAULT 0 COMMENT '引用id',
    `label` VARCHAR(30) NOT NULL DEFAULT '' COMMENT '组件名称',
    `value` VARCHAR(30) NOT NULL DEFAULT '' COMMENT '组件值',
    `value_style` VARCHAR(150) NOT NULL DEFAULT '' COMMENT '组件值排版属性',
    `placeholder` VARCHAR(50) NOT NULL DEFAULT '' COMMENT '占位符，例如：#{orderSource}',
    `type` VARCHAR(10) NOT NULL DEFAULT '' COMMENT '组件类型：hidden-隐藏（refId） text-文本 grid-网格 title-表格标题 category-分类 head-表格头',
    `row` INT NOT NULL DEFAULT 0 COMMENT '行号',
    `column` INT NOT NULL DEFAULT 0 COMMENT '列号',
    `width` INT NOT NULL DEFAULT 0 COMMENT '宽度，百分比',
    `sort` INT NOT NULL DEFAULT 0 COMMENT '序号',
    `is_enable` tinyint NOT NULL DEFAULT 1 COMMENT '启用状态：0 未启用 1已启用',
    `create_time` datetime DEFAULT NULL COMMENT '添加时间',
    `update_time` datetime DEFAULT NULL COMMENT '更新时间',
    PRIMARY KEY(`id`),
    UNIQUE KEY `idx_temponent_component_id`(`id`),
    KEY `idx_template_component_module_id`(`module_id`),
    KEY `idx_template_component_parent_id`(`parent_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = utf8mb4 COMMENT '打印模板系统组件表';

-- 应用-打印模板表
CREATE TABLE IF NOT EXISTS `printer_template_document` (
    `id` INT UNSIGNED AUTO_INCREMENT,
    `name` VARCHAR(20) NOT NULL DEFAULT '' COMMENT '模板名称',
    `document_type` INT NOT NULL DEFAULT 0 COMMENT '文档类型',
    `url` VARCHAR(100) DEFAULT '' COMMENT '文档预览图',
    `status` INT NOT NULL DEFAULT 0 COMMENT '模板状态：0-删除 1-启用 2-禁用',
    `shop_id` INT NOT NULL DEFAULT 0 COMMENT '店铺id',
    `creator_id` INT NOT NULL DEFAULT 0 COMMENT '添加者id',
    `creator_name` VARCHAR(20) DEFAULT '' COMMENT '添加者名称',
    `create_time` datetime DEFAULT NULL,
    `update_time` datetime DEFAULT NULL,
    PRIMARY KEY(`id`),
    KEY `idx_template_document_shop_id`(`shop_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 0 DEFAULT CHARSET = utf8mb4 COMMENT '应用-打印模板表';

-- 自定义组件表
CREATE TABLE `printer_custom_component` (
    `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
    `document_template_id` int(11) NOT NULL DEFAULT '0' COMMENT '模板id',
    `system_component_id` int(11) DEFAULT '0' COMMENT '系统组件id',
    `value_style` varchar(150) NOT NULL DEFAULT '' COMMENT '自定义组件属性',
    `is_delete` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除：0-未删除 1-删除',
    PRIMARY KEY (`id`),
    KEY `idx_systemComponentId` (`system_component_id`)
) ENGINE=InnoDB AUTO_INCREMENT=827 DEFAULT CHARSET=utf8mb4 COMMENT='自定义组件表';