<?php 
/**
* 
*/
class MsglistModel extends RelationModel
{
    protected $tableName = 'wechat_msg_list'; 
	protected $_link = array(
		'Media_list'=> array(  
            'mapping_type'=>HAS_MANY,
            'class_name'=>'wechat_media_list',
            'foreign_key'=>'media_msg_id',
            'mapping_name'=>'my_media_list',
            'mapping_key'=>'msg_id',
            'mapping_order'=>'media_id asc',
        )
	);
}

 ?>