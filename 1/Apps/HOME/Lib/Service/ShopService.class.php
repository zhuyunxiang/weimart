<?php 
/**
* 
*/
import('@.Service.BaseService');
class ShopService extends BaseService
{
	// 构造函数
	function __construct() 
	{
		$this->shopDao = M('Shop');
		$this->shopRelationDao = D('Shop');
		$this->userShopDao = M('User_shop');
		$this->userShopRelationDao = D('User_shop');
		$this->userRelationDao = D('User');
	}

	// 保存店铺信息
	public function saveShopInfo($data = null)
	{
		// 设置店铺默认状态
		if (!isset($data['shop_id'])) {
			$data['shop_stage'] = 0;
		}

		$result = $this->saveInfo('shopDao', $data, 'shop_id');
		if (!isset($data['shop_id'])) {
			$data = array('user_id'=>$_SESSION['user']['user_id'], 'shop_id'=>$result);
			$result = $this->userShopDao->add($data);
		}

		if ($result) {
			return array('data'=>$result, 'info'=>'数据保存成功！', 'status'=>1);
		}

		return array('data'=>false, 'info'=>'数据保存失败！', 'status'=>0);
	}

	// 获取当前用户的店铺信息
	public function getShopWithUser()
	{
		if (isset($_SESSION['user'])) {
			$condition = array('user_id'=>$_SESSION['user']['user_id']);
			$result = $this->userRelationDao->where($condition)->relation('shops')->find();
			$_SESSION['shop'] = $result['shops'][0];
			return $result['shops'][0];
		}
		return false;
	}

	// 获取所有店铺信息
	public function getAllShops()
	{
		$condition = array();
		return $this->shopRelationDao->where($condition)->relation(true)->select();
	}

	// 获取所有推荐店铺信息
	public function getAllRecommendShops()
	{
		$condition = array('shop_stage'=>array('neq',0), 'is_recommend'=>1, 'shop_is_deleted'=>0);
		return $this->shopRelationDao->where($condition)->relation(true)->select();
	}
}
 ?>