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

	// 根据ID获取商品分类信息
	public function get_type_by_id()
	{
		$result = false;
		if (isset($_POST['id'])) {
			$result = A('Ptype', 'Service')->getTypeById($_POST['id']);
		}
		$this->ajaxReturn($result);
	}

	// 根据Id溯源
	public function get_root_by_id()
	{
		$result = A('Ptype', 'Service')->getInfo('pTypeDao');

		if (count($result) > 1) {
			$result = A('Ptype', 'Service')->getRoot($_POST['id']);
			$this->ajaxReturn($result);
		}
	}

	// 星级：5
	// 根据ID获取所有孩子分类的商品
	public function get_child_product_by_id()
	{
		$result = A('Ptype', 'Service')->getInfo('pTypeDao');
		$typeArr = array();
		$data = array();
		$id = 0;
		// 判断是否传入ID
		if ($_POST['id']) {
			$id = $_POST['id'];
		}
		// 判断内容是否为空
		if (count($result) > 1) {
			$result = A('Ptype', 'Service')->getChildrenTree($result, $id);
			foreach ($result as $key => $value) {
				$typeArr[] = $value['type_id'];
				$typeInfo = A('Ptype', 'Service')->getTypeById($value['type_id']);
				if ($typeInfo['product']) {
					// 合并数组
					$data = array_merge_recursive($data, $typeInfo['product']);
				}
			}
		}
		$this->ajaxReturn($data, '数据获取成功！', 1);
	}

	// 根据id获取父
	public function get_father_by_id()
	{
		$result = A('Ptype', 'Service')->getInfo('pTypeDao');
		// 判断是否传入ID
		if ($_POST['id']) {
			$id = $_POST['id'];
		}

		if (count($result) > 1) {
			$result = A('Ptype', 'Service')->getRoot($result, $id);
			$result = A('Ptype', 'Service')->treeGetArrForTitle($result);
			$this->ajaxReturn($result, '数据获取成功！', 1);
		} else {
			$this->ajaxReturn(false, '数据获取失败！', 1);
		}
	}

	// 测试用
	public function test($value='')
	{
		$result = A('Ptype', 'Service')->getInfo('pTypeDao');

		if (count($result) > 1) {
			$result = A('Ptype', 'Service')->getRoot($result,15);
			$this->ajaxReturn($result);
		}
	}

	public function tt($value='')
	{
		$result = A('Ptype', 'Service')->getInfo('pTypeDao');

		if (count($result) > 1) {
			$result = A('Ptype', 'Service')->getChildrenTree($result,1);
			$this->ajaxReturn($result);
		}
	}

}
 ?>