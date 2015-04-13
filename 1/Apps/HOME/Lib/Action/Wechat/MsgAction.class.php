<?php 
/**
* Msg Action.
*/
class MsgAction extends Action
{
	// 显示消息内容
	public function index()
	{
		$media_id = $_GET['media_id'];
		$data = A('Admin/MediaReturn', 'Service')->getMediaReturnById($media_id);
		$this->assign('data', $data);
		$this->display('index');

	}
	
}
 ?>