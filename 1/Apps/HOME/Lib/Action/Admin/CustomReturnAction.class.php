<?php 
/**
* CustumReturn Action
*/
class CustomReturnAction extends Action
{
	// 显示自定义回复设置页
	public function custom_return_conf()
	{
		$this->display('custom_return_conf');
	}

	// 获得自定义回复列表
	public function get_cutom_return_info()
	{
		$data = A('Admin/CustomReturn', 'Service')->getCustomReturn($_POST);
		$this->ajaxReturn($data, '数据获取成功！', 1);
	}
}
 ?>