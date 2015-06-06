<?php 
/**
* User Model.
*/
class UserModel extends RelationModel
{
    protected $_link = array(
        // User's roles.
        array(
            'mapping_type'=>MANY_TO_MANY,
            'class_name'=>'Role',
            'mapping_name'=>'roles',
            'foreign_key'=>'user_id',
            'relation_foreign_key'=>'role_id',
            'relation_table'=>'weimart_user_role'
        ),

        // User's shops.
        array(
            'mapping_type'=>MANY_TO_MANY,
            'class_name'=>'Shop',
            'mapping_name'=>'shops',
            'foreign_key'=>'user_id',
            'relation_foreign_key'=>'shop_id',
            'relation_table'=>'weimart_user_shop'
        ),

        // User's visit history shop detail.
        array(
            'mapping_type'=>MANY_TO_MANY,
            'class_name'=>'Shop',
            'mapping_name'=>'history_shop_detail',
            'foreign_key'=>'user_id',
            'relation_foreign_key'=>'shop_id',
            'relation_table'=>'weimart_user_visit_shop'
        ),

        // User's visit history shop.
        array(
            'mapping_type'=>HAS_MANY,
            'class_name'=>'User_visit_shop',
            'mapping_name'=>'history_shop',
            'foreign_key'=>'user_id',
            'parent_key'=>'user_id'
        ),

        // User's visit history product detail.
        array(
            'mapping_type'=>MANY_TO_MANY,
            'class_name'=>'Product',
            'mapping_name'=>'history_product_detail',
            'foreign_key'=>'user_id',
            'relation_foreign_key'=>'product_id',
            'relation_table'=>'weimart_user_visit_product'
        ),

        // User's Favourite Product.
        array(
            'mapping_type'=>MANY_TO_MANY,
            'class_name'=>'Product',
            'mapping_name'=>'favourite_product',
            'foreign_key'=>'user_id',
            'relation_foreign_key'=>'product_id',
            'relation_table'=>'weimart_user_favourite_product'
        ),

        // User's Favourite Shop.
        array(
            'mapping_type'=>MANY_TO_MANY,
            'class_name'=>'Shop',
            'mapping_name'=>'favourite_shop',
            'foreign_key'=>'user_id',
            'relation_foreign_key'=>'shop_id',
            'relation_table'=>'weimart_user_favourite_shop'
        ),

        // User's visit history product.
        array(
            'mapping_type'=>HAS_MANY,
            'class_name'=>'User_visit_product',
            'mapping_name'=>'history_product',
            'foreign_key'=>'user_id',
            'parent_key'=>'user_id'
        ),
        array(
            'mapping_type'=>MANY_TO_MANY,
            'class_name'=>'user_collect_shop',
            'mapping_name'=>'user_collect_shop',
            'foreign_key'=>'user_id',
            'relation_foreign_key'=>'shop_id',
            'relation_table'=>'weimart_user_collect_shop'
        )
        ,array(
            'mapping_type'=>MANY_TO_MANY,
            'class_name'=>'user_collect_product',
            'mapping_name'=>'user_collect_product',
            'foreign_key'=>'user_id',
            'relation_foreign_key'=>'product_id',
            'relation_table'=>'weimart_user_collect_product'
        ),

    );

    protected $_auto = array ( 
        array('user_is_deleted', 0),  // 新增的时候把user_is_deleted字段设置为0
        array('user_pwd','md5', 1, 'function') , // 对password字段在新增的时候使md5函数处理
        array('user_last_logined','timestamp', 2, 'function'), // 对create_time字段在更新的时候写入当前时间戳
        array('user_last_updated','timestamp', 2, 'function'), // 对create_time字段在更新的时候写入当前时间戳
        array('user_stage', 0)
    );
}

 ?>