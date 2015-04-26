<?php 
/**
* Product Service
*/
import('@.Service.BaseService');
class ProductService extends BaseService
{
	// 构造方法
	function __construct()
	{
		$this->productDao = M('Product');
		$this->productTypeDao = M('Product_type');
		$this->shopProductDao = M('Shop_product');
		$this->shopRelationDao = D('Shop');

	}

	// 保存商品信息
	public function saveProductInfo($data = null)
	{
		$result = $this->saveInfo('productDao', $data, 'product_id');
		// 新增
		if (!isset($data['product_id'])) {
			$data = array('shop_id'=>$data['shop_id'], 'product_id'=>$result);
			$result = $this->shopProductDao->add($data);
			// 在这里添加分类
		// 修改
		} else {

		}

		if ($result) {
			return array('data'=>$result, 'info'=>'数据保存成功！', 'status'=>1);
		}

		return array('data'=>false, 'info'=>'数据保存失败！', 'status'=>0);
	}

	// 根据店铺ID获取所有店铺商品
	public function getProductByShop($shopId)
	{
		$condition = array('shop_id'=>$shopId);
		$result = $this->shopRelationDao->where($condition)->relation('product')->find();
		return array('data'=>$result['product'], 'info'=>'数据获取成功！', 'status'=>1);
	}
}
 ?>