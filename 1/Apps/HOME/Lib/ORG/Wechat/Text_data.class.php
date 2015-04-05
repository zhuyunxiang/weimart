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
		// $host_ip = gethostbyname($SERVER_NAME);
		// $site_name = "http://".$host_ip."/wechat_sq/index.php?s=/Mobile/index/key/";
		// $this->site_name = $site_name;
		// $site_custom_name = "http://".$host_ip."/wechat_sq/index.php?s=/Mobile/custom/key/";
		// $this->site_custom_name = $site_custom_name;
		// $site_img_name = "http://".$host_ip."/wechat_sq/public";
		// $this->site_img_name = $site_img_name;

		// $reply = $this->service($data);
		
		// if (empty($reply)) {
		// 	$reply = $this->service_help($data);
		// }

		// if (empty($reply)) {
		// 	$reply = $this->charactorSet($data);
		// }
		$condition = array('msg_keyword'=>array('like','%'.$content.'%'),'msg_type'=>'custom_text','msg_is_deleted'=>0);
		$result = A('Admin/CustomReturn', 'Service')->getInfoInPage('customReturnDao', $condition);
		if ($result) {
			$str = "你输入的关键字为:“".$content."”,共有".count($result)."条回复:\n";
			foreach ($result as $key => $value) {
				$str = $str.($key+1).". ".$value['msg_text']."\n";
			}
			$str = $str."---【苏州卖盟科技】";
			return array($str,'text');
		} else {
			$reply = array('你输入的是：'.$content.',没有该关键字！','text');
			return  $reply;
		}
		

		
	}

	//服务类消息处理
	// public function service($data)
	// {
	// 	$content = $data['Content'];
	// 	$cd1 = array("news_code_key"=>$content);
	// 	$data = Cache_data::get("news_list",$cd1);
	// 	if (!empty($data)) {
	// 		$reply = array();
	// 		$third_news_list = array();
	// 		foreach ($data as $key => $value) {
	// 			if($value['news_url_type']=="yes"){
	// 				$self_url = $value['news_url'];
	// 			}else{
	// 				$self_url = $this->site_name.$value['news_code_key'];
	// 			}
	// 			$short = strip_tags($value['news_content']);
	// 			$short_str = substr($short,0,15)."......";
	// 			$short_str = str_replace("&nbsp;", " ", $short_str);
	// 			$arr = array($value['news_title'],$short_str,$this->site_img_name."/upload/".$value['news_img_head'],$self_url);
	// 			array_push($third_news_list, $arr);
	// 		}
	// 		array_push($reply, $third_news_list);
	// 		array_push($reply, 'news');
	// 	}
	// 	return $reply;
	// }

	// //自定义消息处理
	// public function charactorSet($data)
	// {
	// 	$cd = array("request_content"=>$data['Content']);
	// 	$r_list = Cache_data::get("charactor_response",$cd);
	// 	if (!empty($r_list)) {
	// 		if ($r_list[0]['response_type']=="文字") {
	// 			$reply = array($r_list[0]['response_content'],'text');
	// 			return $reply;
	// 		}
	// 		$news = array();
	// 		$count = count($r_list);
	// 		if ($count<=8) {
	// 			foreach ($r_list as $key => $value) {
	// 				if ($value['response_type']=="图文") {
	// 					if ($value['response_is_url']=="yes") {
	// 						$self_url = $value['response_url'];
	// 					}else{
	// 						$self_url = $this->site_custom_name.$value['r_id'];
	// 					}
	// 					$arr = array($value['response_title'],$value['response_content'],$this->site_img_name."/upload/".$value['response_head_img'],$self_url);
	// 				}
	// 				array_push($news, $arr);
	// 			}
	// 			$reply = array();
	// 			array_push($reply, $news);
	// 			array_push($reply, 'news');
	// 			return $reply;
	// 		}else{
	// 			$reply = array($r_list[0]['response_content'],'text');
	// 			return $reply;
	// 		}

	// 	}else{
	// 		$reply = array("对不起，你说的我还听不懂，赶紧拿起电话联系我吧 。我的号码是62872029",'text');
	// 		return $reply;
	// 	}
	// }

	// public function service_help($data)
	// {
	// 	// 帮助菜单
	// 	if ($data['Content']=='0') {
	// 		$menu_list = Cache_data::get("menu_second");
	// 		$help_text = "您好，欢迎关注苏州独墅湖科教创新区微信号，我们为您提供以下服务:\n";
	// 		foreach ($menu_list as $key => $value) {
	// 			$help_text = $help_text."【".$value['menu_id']."】 ".$value['menu_name']."\n";
	// 		}
	// 		$help_text.="请回复相应序号，立即查看相应内容。其他事项，请直接回复您要咨询的内容，我们将通过智能客服或人工客服答复您。";
	// 		$reply = array($help_text,'text');
	// 		return $reply;
	// 	}else{
	// 		$cd1 = array("menu_id"=>$data['Content']);
	// 		$second = Cache_data::get("menu_second",$cd1);
	// 		if (!empty($second)) {
	// 			$cd2 = array("menu_second_menu_id"=>$data['Content']);
	// 			$third_list = Cache_data::get("news_list",$cd2);
	// 			if (!empty($third_list)) {
	// 				$count = count($third_list);
	// 				if($second[0]['menu_data_type']=="图文"&&$count<=8){
	// 					$third_news_list = array();
	// 					foreach ($third_list as $key => $value) {
	// 						if($value['news_url_type']=="yes"){
	// 							$self_url = $value['news_url'];
	// 						}else{
	// 							$self_url = $this->site_name.$value['news_code_key'];
	// 						}

	// 						$short = strip_tags($value['news_content']);
	// 						$short_str = substr($short,0,200)."......";
	// 						$short_str = str_replace("&nbsp;", "  ", $short_str);
	// 						$arr = array($value['news_title'],$short_str,$this->site_img_name."/upload/".$value['news_img_head'],$self_url);
							
	// 						array_push($third_news_list, $arr);
	// 					}
	// 					$reply = array();
	// 					array_push($reply, $third_news_list);
	// 					array_push($reply, 'news');
	// 					return $reply;

	// 				}else if($second[0]['menu_data_type']=="文字"||$count>=9){
	// 					$text_news_head = "尊敬的用户，您好！欢迎使用融创新家园微信自助服务。\n";
	// 					$text_news_content = "";
	// 					foreach ($third_list as $key => $value) {
	// 						$text_news_content = $text_news_content."【".$value['news_code_key']."】 ".$value['news_title']."\n";
	// 					}
	// 					$text_news_content = $text_news_head.$text_news_content."回复相应序号，立即看相应内容。\n如需查看服务列表，请回复数字“0”。\n其他事项，请直接回复您要咨询的内容，我们将人工回复您。"."\n"."【融创新家园】";
	// 					$reply = array($text_news_content, 'text');
	// 					return $reply;
	// 				}else{
	// 					$reply = array("对不起，此菜单的内容设置为无！",'text');
	// 					return $reply;
	// 				}
	// 			}else{
	// 				$reply = array("对不起，此菜单的内容还没设置！",'text');
	// 				return $reply;
	// 			}
	// 		}else{
	// 			$reply = array();
	// 			return $reply;
	// 		}	
	// 	}
	// }
}
 ?>