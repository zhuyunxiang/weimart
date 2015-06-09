<?php 
/**
* 事件处理类
*/
class Event_data 
{

	// 主入口
	public function index($data = null)
	{
		if ($data['Event']=="LOCATION") {
		//获取用户的地理位置
			Cache_data::position_update($data);
			$reply = array("你现在所在的位置\n纬度是：".$data['Latitude']."\n经度是：".$data['Longitude']."\n精度是：".$data['Precision'],'text');
		}

		// 关注事件
		if($data['Event']=="subscribe"){
			$key = $data['Event'];
			$reply = array("欢迎关注卖盟微点购物管理平台微信端！更多精彩请<a href='http://weimart.sinaapp.com/weimart_mobile/www/'>点击这里</a>",'text');
		}
		
		// 自定义菜单事件
		if ($data['Event']=="CLICK") {	
            $key = $data['EventKey'];
			// 点击事件
            $reply = $this->clickEventHandler($key);
			return $reply;
		}
		return $reply;
	}

	// 点击事件主入口
	function clickEventHandler($key = null)
	{
		if ($key) {
			// 判断缓存是否存在
			if (S('tempKey-'.$key) != "") {
				$result = S('tempKey-'.$key);
			} else {
				$msgLstDao = M('wechat_msg_list');
				$where = array('msg_key'=>$key);
				$result = $msgLstDao->where($where)->find();
				S('tempKey-'.$key, $result, 1);
			}

			switch ($result['msg_type']) {
				// 回复文本消息
				case 'text':
					return array($result['msg_text'],'text');
					break;
				// 回复图文消息
				case 'media':
					return $this->mediaMsgHand($result);
					break;
				
				default:
					# code...
					break;
			}
		} 
		return array('对不起，没有设定此事件回复！','text');
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

	// 获得当前站点绝对地址
	public function get_url() {
	    $sys_protocal = isset($_SERVER['SERVER_PORT']) && $_SERVER['SERVER_PORT'] == '443' ? 'https://' : 'http://';
	    $php_self = $_SERVER['PHP_SELF'] ? $_SERVER['PHP_SELF'] : $_SERVER['SCRIPT_NAME'];
	    $path_info = isset($_SERVER['PATH_INFO']) ? $_SERVER['PATH_INFO'] : '';
	    $relate_url = isset($_SERVER['REQUEST_URI']) ? $_SERVER['REQUEST_URI'] : $php_self.(isset($_SERVER['QUERY_STRING']) ? '?'.$_SERVER['QUERY_STRING'] : $path_info);
	    return $sys_protocal.(isset($_SERVER['HTTP_HOST']) ? $_SERVER['HTTP_HOST'] : '');
 	}
	
}
 ?>