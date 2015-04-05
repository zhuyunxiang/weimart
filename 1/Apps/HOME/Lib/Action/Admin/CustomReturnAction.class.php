<?php 
/**
* CustumReturn Action
*/
class CustomReturnAction extends Action
{
	// 显示自定义回复设置页
	// Show
	public function custom_return_conf()
	{
		$this->display('custom_return_conf');
	}

	// 获得自定义回复列表
	// Ajax
	public function get_cutom_text_return_info()
	{
		$data = A('Admin/CustomReturn', 'Service')->getCustomTextReturn($_POST);
		$this->ajaxReturn($data, '数据获取成功！', 1);
	}

	// 保存自定义文字回复
	// Ajax
	public function save_cutom_text_return_info()
	{
		$data = A('Admin/CustomReturn', 'Service')->saveCustomTextReturn($_POST);
		if ($data) {
			$this->ajaxReturn($data, '数据保存成功！', 1);
		} else {
			$this->ajaxReturn($data, '数据保存失败！', 0);
		}
		
	}

	// 删除自定义文字回复
	// Ajax
	public function remove_cutom_text_return_info()
	{
		$data = A('Admin/CustomReturn', 'Service')->removeCustomTextReturn($_POST);
		if ($data) {
			$this->ajaxReturn($data, '数据删除成功！', 1);
		} else {
			$this->ajaxReturn($data, '数据删除失败！', 0);
		}
		
	}
}
 ?>