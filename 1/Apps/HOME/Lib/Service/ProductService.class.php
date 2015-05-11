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
		$this->productRelationDao = D('Product');

	}

	// 保存商品信息
	public function saveProductInfo($data = null)
	{
		$result = $this->saveInfo('productDao', $data, 'product_id');
		// 新增
		if (!isset($data['product_id'])) {
			$shopProductData = array('shop_id'=>$data['shop_id'], 'product_id'=>$result);
			$productTypeData = array('type_id'=>$data['type_id'], 'product_id'=>$result);

			$shopProductResult = $this->shopProductDao->add($shopProductData);
			$productTypeResult = $this->productTypeDao->add($productTypeData);
			$result = ($shopProductResult && $productTypeResult);
			// 在这里添加分类
		// 修改
		} else {
			$condition = array('product_id'=>$data['product_id']);
			$productTypeData = array('type_id'=>$data['type_id'], 'product_id'=>$data['product_id']);
			$result = $this->productTypeDao->where($condition)->save($productTypeData);
		}

		if ($result) {
			return array('data'=>$result, 'info'=>'数据保存成功！', 'status'=>1);
		}

		return array('data'=>false, 'info'=>'数据保存失败！', 'status'=>0);
	}

	// 根据店铺ID获取所有店铺中的商品
	public function getProductByShop($shopId)
	{
		$condition = array('shop_id'=>$shopId);
		$result = $this->shopRelationDao->where($condition)->relation('product')->find();

		$productIdList = array();
		foreach ($result['product'] as $key => $product) {
			array_push($productIdList, $product['product_id']);
		}

		$condition = array('product_id'=>array('in', $productIdList));
		$product_list = $this->productRelationDao->where($condition)->relation('types')->select();

		return array('data'=>$product_list, 'info'=>'数据获取成功！', 'status'=>1);
	}

	// 获取所有商品信息
	public function getAllProducts()
	{
		$condition = array('product_is_deleted'=>0);
		$product_list = $this->productRelationDao->where($condition)->relation('types')->select();

		return array('data'=>$product_list, 'info'=>'数据获取成功！', 'status'=>1);
	}

	// 获取所有已经上架的商品信息
	public function getAllOnlineProducts()
	{
		$condition = array('product_is_deleted'=>0, 'product_state'=>'A');
		$product_list = $this->productRelationDao->where($condition)->relation('types')->select();

		return array('data'=>$product_list, 'info'=>'数据获取成功！', 'status'=>1);
	}

	// 根据ID获取商品信息
	public function getProductById($id)
	{
		$condition = array('product_is_deleted'=>0, 'product_id'=>$id);
		$product_list = $this->productRelationDao->where($condition)->relation(array('types','shop_info'))->find();

		return array('data'=>$product_list, 'info'=>'数据获取成功！', 'status'=>1);
	}

	// 获取所有推荐商品信息(随机乱序)
	public function getAllRecommendProducts()
	{
		$condition = array('product_is_deleted'=>0, 'is_recommend'=>1);
		$product_list = $this->productRelationDao->where($condition)->relation('types')->select();
		// 随机打乱
		shuffle($product_list);
		return array('data'=>$product_list, 'info'=>'数据获取成功！', 'status'=>1);
	}

	// 根据ID删除商品信息
	public function removeProductInfoById($productId)
	{
		$data = array('product_id'=>$productId, 'product_is_deleted'=>1);
		$result = $this->productDao->save($data);
		return array('data'=>$result, 'info'=>'商品删除成功！', 'status'=>1);
	}

}
 ?>