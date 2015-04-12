<?php 
/**
* CustomReturnService
*/
import('@.Service.BaseService');
class MediaReturnService extends BaseService
{
	// 构造方法
	function __construct()
	{
		$this->MediaItemDao = M('wechat_media_list');
	}
	// 获得自顶回复列表
	public function getItemsByMsgId($id = null)
	{
		$dao = 'MediaItemDao';

		$condition = array('media_msg_id'=>$id);
		$order = null;
		$page = null;
		return $this->getInfo($dao, $condition);
	}

	// // 保存自定义图文回复
	// public function saveCustomMediaReturn($saveData = null)
	// {
	// 	$dao = 'customReturnDao';
	// 	$saveData['msg_type'] = 'custom_media';
	// 	$saveData['msg_key'] = md5(time());
	// 	return $this->saveInfo($dao, $saveData, 'msg_id');
	// }

	// // 删除自定义文字回复
	// public function removeCustomTextReturn($data = null)
	// {
	// 	if ($data) {
	// 		$dao = 'customReturnDao';
	// 		$data['msg_is_deleted'] = '1';
	// 		return $this->saveInfo($dao, $data, 'msg_id');
	// 	}
	// }
}
 ?>