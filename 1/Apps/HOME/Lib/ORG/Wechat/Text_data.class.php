<?php 
/**
* 
*/
// import('@.Util.Cache_data');
class Text_data 
{
	
	// public $site_name = "http://zhuyunxiangsq.sinaapp.com/index.php?s=/Wechat/test/key/";
	// public $site_img_name = "http://zhuyunxiangsq-public.stor.sinaapp.com";

	//配置访问路径
	public $site_name ;
	public $site_custom_name ;
	public $site_img_name ;

	//文本消息处理主入口
	public function index($data = null)
	{
		$content = $data['Content'];

		$condition = array('msg_keyword'=>array('like','%'.$content.'%'),'msg_is_deleted'=>0);
		$result = A('Admin/CustomReturn', 'Service')->getInfoInPage('customReturnDao', $condition);
		
		switch ($result[0]['msg_type']) {
			case 'custom_text':
				return $this->textMsgHand($content, $result);
				break;
			case 'custom_media':
				return $this->mediaMsgHand($result[0]);
				break;
			default:
				$reply = array('你输入的是：'.$content.',没有该关键字！','text');
				return  $reply;
				break;
		}
		
	}

	// 获得当前站点绝对地址
	public function get_url() {
	    $sys_protocal = isset($_SERVER['SERVER_PORT']) && $_SERVER['SERVER_PORT'] == '443' ? 'https://' : 'http://';
	    $php_self = $_SERVER['PHP_SELF'] ? $_SERVER['PHP_SELF'] : $_SERVER['SCRIPT_NAME'];
	    $path_info = isset($_SERVER['PATH_INFO']) ? $_SERVER['PATH_INFO'] : '';
	    $relate_url = isset($_SERVER['REQUEST_URI']) ? $_SERVER['REQUEST_URI'] : $php_self.(isset($_SERVER['QUERY_STRING']) ? '?'.$_SERVER['QUERY_STRING'] : $path_info);
	    return $sys_protocal.(isset($_SERVER['HTTP_HOST']) ? $_SERVER['HTTP_HOST'] : '');
 	}

 	// 返回文字消息
	public function textMsgHand($content, $result)
	{
		if ($result) {
			$str = "你输入的关键字为:“".$content."”,共有".count($result)."条回复:\n";
			foreach ($result as $key => $value) {
				$str = $str.($key+1).". ".$value['msg_text']."\n";
			}
			$str = $str."---【苏州卖盟科技】";
			return array($str,'text');
		} else {
			return array('你输入的是：'.$content.',没有该关键字！','text');
		}
	}

	// 返回图文消息
	public function mediaMsgHand($result = null)
	{
		if (!empty($result)) {
			$reply = array();
			$third_news_list = array();

			$m = M('wechat_media_list');
			$condition = array('media_msg_id'=>$result['msg_id']);
			$data = $m->where($condition)->order('order_index ASC')->select();

			foreach ($data as $key => $value) {
				$short = strip_tags($value['media_content']);
				$short_str = substr($short,0,15)."......";
				$short_str = str_replace("&nbsp;", " ", $short_str);
				$arr = array($value['media_title'],$short_str, $value['media_img'], $this->get_url().'/index.php/Wechat/Msg?media_id='.$value['media_id']);
				array_push($third_news_list, $arr);
			}
			array_push($reply, $third_news_list);
			array_push($reply, 'news');
		}
		return $reply;
	}
}
 ?>