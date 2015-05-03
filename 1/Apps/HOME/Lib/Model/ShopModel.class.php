<?php 
/**
* Shop Model.
*/
class ShopModel extends RelationModel
{
	protected $_link = array(
		// Shop's products.
		array(
			'mapping_type'=>MANY_TO_MANY,
            'class_name'=>'Product',
            'mapping_name'=>'product',
            'foreign_key'=>'shop_id',
            'relation_foreign_key'=>'product_id',
            'relation_table'=>'weimart_shop_product',
            'condition'=>'product_is_deleted=0'
		),
		// Shop's types.
		array(
			'mapping_type'=>MANY_TO_MANY,
            'class_name'=>'Stype',
            'mapping_name'=>'stypes',
            'foreign_key'=>'shop_id',
            'relation_foreign_key'=>'type_id',
            'relation_table'=>'weimart_shop_type'
		),
		// Shop's super shop.
		array(
			'mapping_type'=>BELONGS_TO,
            'class_name'=>'Shop',
            'mapping_name'=>'super_shop',
            'foreign_key'=>'shop_id',
            'parent_key'=>'super_shop_id'
		),
		// Shop's delegate shops.
		array(
			'mapping_type'=>HAS_MANY,
            'class_name'=>'Shop',
            'mapping_name'=>'delegate_shops',
            'foreign_key'=>'shop_id',
            'parent_key'=>'super_shop_id'
		),
		// Shop's comments.
		array(
			'mapping_type'=>HAS_MANY,
            'class_name'=>'User_comment_shop',
            'mapping_name'=>'comments',
            'foreign_key'=>'shop_id',
            'parent_key'=>'shop_id'
		),
		// Shop's comments content.
		array(
			'mapping_type'=>MANY_TO_MANY,
            'class_name'=>'Comment_content',
            'mapping_name'=>'comments_content',
            'foreign_key'=>'shop_id',
            'relation_foreign_key'=>'comment_id',
            'relation_table'=>'weimart_user_comment_shop'
		),
		// Visit history.
        array(
            'mapping_type'=>MANY_TO_MANY,
            'class_name'=>'User',
            'mapping_name'=>'history_users',
            'foreign_key'=>'shop_id',
            'relation_foreign_key'=>'user_id',
            'relation_table'=>'weimart_user_visit_shop'
        ),

        // Shop Keepers
        array(
            'mapping_type'=>MANY_TO_MANY,
            'class_name'=>'User',
            'mapping_name'=>'keeper',
            'foreign_key'=>'shop_id',
            'relation_foreign_key'=>'user_id',
            'relation_table'=>'weimart_user_shop'
        ),

        // Visit history.
        array(
            'mapping_type'=>HAS_MANY,
            'class_name'=>'User_visit_shop',
            'mapping_name'=>'history',
            'foreign_key'=>'shop_id',
            'parent_key'=>'shop_id'
        ),

	);
}
 ?>