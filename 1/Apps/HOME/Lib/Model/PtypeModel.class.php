<?php 
/**
* Stype Model.
*/
class PtypeModel extends RelationModel
{
	protected $_link = array(
		// Shop's super type.
		array(
			'mapping_type'=>BELONGS_TO,
            'class_name'=>'Ptype',
            'mapping_name'=>'super_types',
            'foreign_key'=>'type_id',
            'parent_key'=>'super_type_id'
		),
		// Shop's types.
		array(
			'mapping_type'=>HAS_MANY,
            'class_name'=>'Ptype',
            'mapping_name'=>'extend_types',
            'foreign_key'=>'type_id',
            'parent_key'=>'super_type_id'
		),
		array(
			'mapping_type'=>MANY_TO_MANY,
            'class_name'=>'Product',
            'mapping_name'=>'product',
            'foreign_key'=>'type_id',
            'relation_foreign_key'=>'product_id',
            'relation_table'=>'weimart_product_type',
            'condition'=>'product_is_deleted=0'
		),
	);
}
 ?>