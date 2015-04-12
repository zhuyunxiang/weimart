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
		$order = 'order_index asc';
		$page = null;
		return $this->getInfo($dao, $condition, $order);
	}

	// 保存自定义图文回复
	public function saveMediaItems($saveData = null)
	{
		$dao = 'MediaItemDao';
		$id = $saveData['msg_id'];
		$condition = array('media_msg_id'=>$id);
		$this->MediaItemDao->where($condition)->delete();

		foreach ($saveData['data'] as $key => $value) {
			unset($value['media_id']);
			$this->MediaItemDao->add($value);
		}
		return true;
	}

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