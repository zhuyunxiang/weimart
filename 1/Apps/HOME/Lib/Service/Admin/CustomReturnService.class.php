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
	public function getCustomReturn($data = null)
	{
		$dao = 'customReturnDao';
		$condition = array('msg_keyword'=>array('like','%'.$data['keyword'].'%'),'msg_type'=>'custom_text');
		$order = 'msg_id desc';
		$page = array('page'=>$data['currentPage'],'pageSize'=>$data['pageSize']);
		$data = array();
		$data['totalCount'] = $this->getCount($dao, $condition);
		$data['content'] = $this->getInfoInPage($dao, $condition, $order, $page);
		return $data;
	}
}
 ?>