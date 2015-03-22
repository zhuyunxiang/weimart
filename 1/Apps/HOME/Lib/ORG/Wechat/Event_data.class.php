<?php 
/**
* 事件处理类
*/
class Event_data 
{
	// public $site_name = "http://zhuyunxiangsq.sinaapp.com/index.php?s=/Wechat/test/key/";
	// public $site_img_name = "http://zhuyunxiangsq-public.stor.sinaapp.com";

	public function index($data = null)
	{
		// $host_ip = gethostbyname($SERVER_NAME);
		// $site_name = "http://".$host_ip."/wechat_sq/index.php?s=/Mobile/index/key/";
		// $site_img_name = "http://".$host_ip."/wechat_sq/public";
		// $reply = array();
		// if ($data['Event']=="CLICK") {			//点击事件的处理入口
		// 	$key = $data['EventKey'];
			
		// }else if($data['Event']=="subscribe"){
		// 	$key = $data['Event'];
		// }
		// $cd1 = array("menu_key"=>$key);
		// $second = Cache_data::get("menu_second",$cd1);
		// if (!empty($second)) {
		// 	$cd2 = array("menu_second_menu_id"=>$second[0]['menu_id']);
		// 	$third_list = Cache_data::get("news_list",$cd2);
		// 	if (!empty($third_list)) {
		// 		$count = count($third_list);
		// 		if($second[0]['menu_data_type']=="图文"&&$count<=8){
		// 			$third_news_list = array();
		// 			foreach ($third_list as $key => $value) {
		// 				if($value['news_url_type']=="yes"){
		// 					$self_url = $value['news_url'];
		// 				}else{
		// 					$self_url = $site_name.$value['news_code_key'];
		// 				}
		// 				$short = strip_tags($value['news_content']);
		// 				$short_str = substr($short,0,200)."......";
		// 				$short_str = str_replace("&nbsp;", "  ", $short_str);
		// 				$arr = array($value['news_title'],$short_str,$site_img_name."/upload/".$value['news_img_head'],$self_url);
						
		// 				array_push($third_news_list, $arr);
		// 			}
		// 			array_push($reply, $third_news_list);
		// 			array_push($reply, 'news');
		// 			return $reply;
		// 		}else if($second[0]['menu_data_type']=="文字"||$count>=9){
		// 			if ($key == "subscribe"||$key == "suggestions") {
		// 				if ($third_list[0]['news_content']!="") {
		// 					$reply = array($third_list[0]['news_content'], 'text');
		// 					return $reply;
		// 				}
		// 				$reply = array("欢迎使用融创新家园微信服务，回复0查看菜单！", 'text');
		// 				return $reply;
		// 			}else{
		// 				$text_news_head = "尊敬的用户，您好！欢迎使用融创新家园微信自助服务。\n";
		// 				$text_news_content = "";
		// 				foreach ($third_list as $key => $value) {
		// 					$text_news_content = $text_news_content."【".$value['news_code_key']."】 ".$value['news_title']."\n";
		// 				}
		// 				$text_news_content = $text_news_head.$text_news_content."回复相应序号，立即看相应内容。\n如需查看服务列表，请回复数字“0”。\n其他事项，请直接回复您要咨询的内容，我们将人工回复您。"."\n"."【融创新家园】";
		// 				$reply = array($text_news_content, 'text');
		// 				return $reply;
		// 			}
		// 		}else{
		// 			$reply = array("对不起，此菜单的内容设置为无！",'text');
		// 			return $reply;
		// 		}
		// 	}else{
		// 		$reply = array("对不起，此菜单的内容还没设置！",'text');
		// 		return $reply;
		// 	}
		// }else{
			
		// 	return $reply;
		// }	
		if ($data['Event']=="LOCATION") {
		//获取用户的地理位置
			Cache_data::position_update($data);
			$reply = array("你现在所在的位置\n纬度是：".$data['Latitude']."\n经度是：".$data['Longitude']."\n精度是：".$data['Precision'],'text');
		}
		
		if ($data['Event']=="CLICK") {	
			$key = $data['EventKey'];

			// 点击事件
			$reply = $this->clickEventHandler($key);
			return $reply;
		}
		return $reply;
	}

	// 点击事件处理
	function clickEventHandler($key = null)
	{
		if ($key) {
			// 判断缓存是否存在
			if (isset(S('tempKey-'.$key))) {
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
					# code...
					break;
				
				default:
					# code...
					break;
			}
		} else {
			return array("本平台正处于开发阶段，更多精彩敬请期待！\n"."点击"."<a href='http://210.29.7.15/wechat_you/index.php?s=Test/test_wechat/wechat_id/".$data['FromUserName']."'>跳转</a>查看你周边的人",'text');
		}
	}
	
}
 ?>