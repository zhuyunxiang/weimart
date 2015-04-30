<?php 
/**
* Ptype Action
* 商品类别API
*/

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: X-Requested-With');
class PtypeAPIAction extends Action
{

	// 获取所有商品的分类
	// AJAX Json
	public function get_all_types()
	{
		$condition = array('user_id'=>0);
		$result = A('Ptype', 'Service')->getAllTypes($condition);
		$this->ajaxReturn($result);
	}

	// 保存商品分类
	public function save_type()
	{
		$_POST['user_id'] = 0;
		$result = A('Ptype', 'Service')->saveType($_POST);
		$this->ajaxReturn($result['data'], $result['info'], $result['status']);
	}

	// 保存商品分类ForUser
	public function save_type_pub()
	{
		if ($_SESSION['user']) {
			$_POST['user_id'] = $_SESSION['user']['user_id'];
			$result = A('Ptype', 'Service')->saveType($_POST);
			$this->ajaxReturn($result['data'], $result['info'], $result['status']);
		} else {
			$this->ajaxReturn(false, "请先登录!", 401);
		}
	}

	// 删除商品分类
	public function remove_type()
	{
		$result = A('Ptype', 'Service')->removeType($_POST);
		$this->ajaxReturn($result['data'], $result['info'], $result['status']);
	}

	// 获取店铺中商品分类
	// AJax Json
	public function get_all_types_for_droplist()
	{
		$condition['user_id'] = array('in', array('0',$_SESSION['user']['user_id']));
		$result = A('Ptype', 'Service')->getAllTypesInArr($condition);
		$this->ajaxReturn($result, "数据获取成功!", 1);
	}

	// 获取当前卖家所有商品的分类
	// AJAX Json
	public function get_all_types_for_seller()
	{
		$condition['user_id'] = array('in', array('0',$_SESSION['user']['user_id']));
		$result = A('Ptype', 'Service')->getAllTypes($condition);
		$this->ajaxReturn($result, "数据获取成功!", 1);
	}


	// 测试用
	public function test($value='')
	{
		$condition['user_id'] = array('in', array('0',$_SESSION['user']['user_id']));
		$result = A('Ptype', 'Service')->getAllTypesInArr($condition);
		dump($result);
	}

}
 ?>