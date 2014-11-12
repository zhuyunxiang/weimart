<?php 
/**
* 
*/
class RoleModel extends RelationModel
{
	protected $_link = array(
       array(
            'mapping_type'=>MANY_TO_MANY,
            'class_name'=>'Permission',
            'mapping_name'=>'permissions',
            'foreign_key'=>'role_id',
            'relation_foreign_key'=>'permission_id',
            'relation_table'=>'weimart_role_permission'
        )
    );
}
 ?>