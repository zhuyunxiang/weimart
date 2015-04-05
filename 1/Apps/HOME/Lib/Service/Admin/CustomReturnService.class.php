<?php 
/**
* CustomReturnService
*/
import('@.Service.BaseService');
class CustomReturnService extends BaseService
{
	// 构造方法
	function __construct()
	{
		$this->customReturnDao = M('wechat_msg_list');
	}
	// 获得自顶回复列表
	public function getCustomTextReturn($data = null)
	{
		$dao = 'customReturnDao';
		$condition = array('msg_keyword'=>array('like','%'.$data['keyword'].'%'),'msg_type'=>'custom_text','msg_is_deleted'=>0);
		$order = 'msg_id desc';
		$page = array('page'=>$data['currentPage'],'pageSize'=>$data['pageSize']);
		$data = array();
		$data['totalCount'] = $this->getCount($dao, $condition);
		$data['content'] = $this->getInfoInPage($dao, $condition, $order, $page);
		return $data;
	}

	// 保存自定义文字回复
	public function saveCustomTextReturn($saveData = null)
	{
		$dao = 'customReturnDao';
		$saveData['msg_type'] = 'custom_text';
		$saveData['msg_key'] = md5(time());
		return $this->saveInfo($dao, $saveData, 'msg_id');
	}

	// 删除自定义文字回复
	public function removeCustomTextReturn($data = null)
	{
		if ($data) {
			$dao = 'customReturnDao';
			$data['msg_is_deleted'] = '1';
			return $this->saveInfo($dao, $data, 'msg_id');
		}
	}
}
 ?>