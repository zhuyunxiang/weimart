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
		$result = A('Ptype', 'Service')->getAllTypes();
		$this->ajaxReturn($result);
	}

	// 保存商品分类
	public function save_type()
	{
		$result = A('Ptype', 'Service')->saveType($_POST);
		$this->ajaxReturn($result['data'], $result['info'], $result['status']);
	}

	// 删除商品分类
	public function remove_type()
	{
		$result = A('Ptype', 'Service')->removeType($_POST);
		$this->ajaxReturn($result['data'], $result['info'], $result['status']);
	}

}
 ?>