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

	public function get_shop_with_user()
	{
		if (isset($_SESSION['user'])) {
			$condition = array('user_id'=>$_SESSION['user']['user_id']);
			$result = $this->userRelationDao->where($condition)->relation('shops')->find();
			return $result['shops'][0];
		}
		return false;
	}
}
 ?>