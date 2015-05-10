<?php 
/**
* Product Model.
*/
class ProductModel extends RelationModel
{
	protected $_link = array(
		// Product roles.
        array(
            'mapping_type'=>MANY_TO_MANY,
            'class_name'=>'Ptype',
            'mapping_name'=>'types',
            'foreign_key'=>'product_id',
            'relation_foreign_key'=>'type_id',
            'relation_table'=>'weimart_product_type'
        ),
        // Product's comments.
		array(
			'mapping_type'=>HAS_MANY,
            'class_name'=>'User_comment_product',
            'mapping_name'=>'comments',
            'foreign_key'=>'product_id',
            'parent_key'=>'product_id'
		),
		// Product's comments content.
		array(
			'mapping_type'=>MANY_TO_MANY,
            'class_name'=>'Comment_content',
            'mapping_name'=>'comments_content',
            'foreign_key'=>'product_id',
            'relation_foreign_key'=>'comment_id',
            'relation_table'=>'weimart_user_comment_product'
		),
		// Visit history.
        array(
            'mapping_type'=>MANY_TO_MANY,
            'class_name'=>'User',
            'mapping_name'=>'history_users',
            'foreign_key'=>'product_id',
            'relation_foreign_key'=>'user_id',
            'relation_table'=>'weimart_user_visit_product'
        ),
        // Shop info.
        array(
            'mapping_type'=>MANY_TO_MANY,
            'class_name'=>'Shop',
            'mapping_name'=>'shop_info',
            'foreign_key'=>'product_id',
            'relation_foreign_key'=>'shop_id',
            'relation_table'=>'weimart_shop_product'
        ),

        // Visit history.
        array(
            'mapping_type'=>HAS_MANY,
            'class_name'=>'User_visit_product',
            'mapping_name'=>'history',
            'foreign_key'=>'product_id',
            'parent_key'=>'product_id'
        ),
	);
}
 ?>