<?php 
/**
* 
*/
class FirstMenuModel extends RelationModel
{
    protected $tableName = 'wechat_menu_first'; 
    protected $_link = array(
        'Menu_second'=> array(  
            'mapping_type'=>HAS_MANY,
            'class_name'=>'Wechat_menu_second',
            'foreign_key'=>'menu_first_id',
            'mapping_name'=>'secondMenuList',
            'mapping_order'=>'menu_id asc'
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