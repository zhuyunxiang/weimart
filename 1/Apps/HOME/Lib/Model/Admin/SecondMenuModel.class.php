<?php 
/**
* 
*/
class SecondMenuModel extends RelationModel
{
	protected $tableName = 'wechat_menu_second'; 
	protected $_link = array(
		'Menu_first'=> array(  
     		'mapping_type'=>BELONGS_TO,
			'class_name'=>'wechat_menu_first',
			'foreign_key'=>'menu_first_id',
			'mapping_name'=>'menu_first_name',
           	'mapping_fields'=>'menu_name',
       		'as_fields'=>'menu_name:menu_first_name'
 		),

 		'Msg_list'=>array(
 			'mapping_type'=>HAS_ONE,
 			'class_name'=>'wechat_msg_list',
 			'foreign_key'=>'msg_key',
 			'mapping_key'=>'menu_key',
 			'mapping_name'=>'msg_items',
 		),
	);
	
}

 ?>