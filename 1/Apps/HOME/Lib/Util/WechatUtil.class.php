<?php 
/**
* 微信辅助工具类
*/
class WechatUtil
{
	//自定义菜单中获取access_token
	public function get_access_token($appid, $secret){
		$appid = trim($appid);
		$secret = trim($secret);
		$url="https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=".$appid."&secret=".$secret;
		$json=self::http_request_json($url);//这个地方不能用file_get_contents
		$data=json_decode($json,true);
		if($data['access_token']){
			return $data['access_token'];
		}else{
			return "获取access_token错误";
		}		
	}
	// 获取用户的基本信息
	// public function get_user_data($openid,$APPID=null,$APPSECRET=null)
	// {
	// 	$openid = trim($openid);
	// 	if ($this->cacheUtil->get_access_token($APPID,$APPSECRET)=="获取access_token错误") {
	// 		return "获取access_token错误";
	// 	}else{
	// 		$access_token = $this->cacheUtil->get_access_token($APPID,$APPSECRET);
	// 		$url = "https://api.weixin.qq.com/cgi-bin/user/info?access_token=".$access_token."&openid=".$openid;
	// 		$json=self::http_request_json($url);//这个地方不能用file_get_contents
	// 		$data=json_decode($json,true);
	// 		if($data['nickname']){
	// 			return $data;
	// 			// 返回用户数据的array
	// 		}else{
	// 			return "用户openid错误！";
	// 		}		
	// 	}
	// }

	// public function get_all_users($APPID=null,$APPSECRET=null)
	// // 通过高级接口获取最新用户列表
	// {
	// 	if ($this->cacheUtil->get_access_token($APPID,$APPSECRET)=="获取access_token错误") {
	// 		return "获取access_token错误";
	// 	}else{
	// 		$access_token = $this->cacheUtil->get_access_token($APPID,$APPSECRET);
	// 		$url = "https://api.weixin.qq.com/cgi-bin/user/get?access_token=".$access_token;
	// 		$json=self::http_request_json($url);//这个地方不能用file_get_contents
	// 		$data=json_decode($json,true);
	// 		$all_users = $data['data']['openid'];
	// 		while ($data['next_openid']!='') {
	// 			$url = "https://api.weixin.qq.com/cgi-bin/user/get?access_token=".$access_token."&next_openid=".$data['next_openid'];
	// 			$json=self::http_request_json($url);//这个地方不能用file_get_contents
	// 			$data=json_decode($json,true);
	// 			if (is_array($data['data']['openid'])) {
	// 				$all_users = array_merge($all_users,$data['data']['openid']);
	// 			}
	// 		}
	// 		if($all_users){
	// 			return $all_users;
	// 		}else{
	// 			return "获取用户列表错误！";
	// 		}		
	// 	}
	// }

	//因为url是https 所有请求不能用file_get_contents,用curl请求json 数据
	//【注意:要开启php.ini中的curl扩展】
	public function http_request_json($url){  
		$ch = curl_init();
		curl_setopt($ch, CURLOPT_URL,$url);
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
		curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
		$result = curl_exec($ch);
		curl_close($ch);
		return $result;  
	}

	//创建自定义菜单
	//【注意:要开启php.ini中的curl扩展】
	public function createMenu($data, $appid, $secret){
		// $data是转过格式的json数据
		// 返回值是json格式的数据
		$accessToken = self::get_access_token($appid, $secret);
		$ch = curl_init();
		curl_setopt($ch, CURLOPT_URL, "https://api.weixin.qq.com/cgi-bin/menu/create?access_token=".$accessToken);
		curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
		curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);
		curl_setopt($ch, CURLOPT_USERAGENT, 'Mozilla/5.0 (compatible; MSIE 5.01; Windows NT 5.0)');
		curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
		curl_setopt($ch, CURLOPT_AUTOREFERER, 1);
		curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		$tmpInfo = curl_exec($ch);
		if (curl_errno($ch)) {
			return curl_error($ch);
		}
		curl_close($ch);
		return $tmpInfo;
	}
}
 ?>