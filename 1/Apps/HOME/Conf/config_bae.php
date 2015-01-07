<?php
//BAE下固定mysql配置
return array(
		'URL_MODEL'=>3,
		'BUCKET_PREFIX'=>'think-',
		'DB_TYPE'=> 'mysql',     // 数据库类型
		'DB_HOST'=> HTTP_BAE_ENV_ADDR_SQL_IP, // 服务器地址
		'DB_NAME'=> 'LpweaZyjOfBgJDyxWfjL',        // 数据库名,填写你创建的数据库
		'DB_USER'=> HTTP_BAE_ENV_AK,    // 用户名
		'DB_PWD'=> HTTP_BAE_ENV_SK,         // 密码
		'DB_PORT'=> HTTP_BAE_ENV_ADDR_SQL_PORT,        // 端口
		'DB_PREFIX'=>'shuh_',  //设置表前缀
		//更改模板替换变量，让普通能在所有平台下显示
		'TMPL_CACHE_ON'   => false,  // 默认开启模板编译缓存 false 的话每次都重新编译模板
		'ACTION_CACHE_ON'  => false,  // 默认关闭Action 缓存
		'HTML_CACHE_ON'   => false,   // 默认关闭静态缓存

		'TMPL_PARSE_STRING'=>array(
		  // __PUBLIC__/upload  -->  /Public/upload -->http://appname-public.stor.sinaapp.com/upload
		'/Public/upload'=>file_domain('think-public').'/upload'
		)
);
