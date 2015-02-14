<?php 
/**
*	自定义菜单配置Action
*/
class ConfAction extends Action
{
	public function set_menu()
	{
		$wechat_info = A('Admin/Index', 'Service')->getWechatInfo();
		// 判断当前用户的微信账户信息是否存在
		if ($wechat_info) {
			// 判断access_token缓存是否存在
			if (S('wechat_access_token_'.$_SESSION['user']['id'])){
				// 缓存存在
				$access_token = S('wechat_access_token_'.$_SESSION['user']['id']);
			} else{
				// 缓存不存在
				$access_token = A('Wechat','Util')->get_access_token($wechat_info['data']['app_id'], $wechat_info['data']['app_secret']);
				S('wechat_access_token_'.$_SESSION['user']['id'], $access_token, 1000);
			}

			$menu_info = A('Admin/Index', 'Service')->getMenuList();
			$menu_data = array('button'=>array());
			foreach ($menu_info as $key => $first_menu) {
				// 判断是否存在子菜单
				if ($first_menu['secondMenuList']) {
					// 存在子菜单
					$first_menu_item = array('name'=>urlencode($first_menu['menu_name']), 'sub_button'=>array());

					foreach ($first_menu['secondMenuList'] as $second_menu_key => $second_menu) {
						if ($first_menu['menu_type'] != 'url') {
							$second_menu_item['type'] = 'click';
							$second_menu_item['key'] = $second_menu['menu_key'];
							$second_menu_item['name'] = urlencode($second_menu['menu_name']);
						} else {
							$second_menu_item['type'] = 'view';
							$second_menu_item['url'] = $second_menu['menu_url'];
							$second_menu_item['name'] = urlencode($second_menu['menu_name']);
						}
						array_push($first_menu_item['sub_button'], $second_menu_item);
					}

					
				} else {
					$first_menu_item = array('name'=>urlencode($first_menu['menu_name']));
					if ($first_menu['menu_type'] != 'url') {
						$first_menu_item['type'] = 'click';
						$first_menu_item['key'] = $first_menu['menu_key'];
					} else {
						$first_menu_item['type'] = 'view';
						$first_menu_item['url'] = $first_menu['menu_url'];
					}
				}
				array_push($menu_data['button'], $first_menu_item);
			}
			$menu_data = json_encode($menu_data);
			$menu_data = urldecode($menu_data);
			// dump($menu_data);
			$data = A('Wechat','Util')->createMenu($menu_data, $access_token);
			$data = json_decode($data);
			$return_code = array('-1'=>'系统繁忙', '0'=>'请求成功', '40001'=>'获取access_token时AppSecret错误，或者access_token无效' , '40002'=>'不合法的凭证类型', '40003'=>'不合法的OpenID', '40004'=>'不合法的媒体文件类型', '40005'=>'不合法的文件类型', '40006'=>'不合法的文件大小', '40007'=>'不合法的媒体文件id', '40008'=>'不合法的消息类型', '40009'=>'不合法的图片文件大小', '40010'=>'不合法的语音文件大小', '40011'=>'不合法的视频文件大小', '40012'=>'不合法的缩略图文件大小', '40013'=>'不合法的APPID', '40014'=>'不合法的access_token', '40015'=>'不合法的菜单类型', '40016'=>'不合法的按钮个数', '40017'=>'不合法的按钮个数', '40018'=>'不合法的按钮名字长度', '40019'=>'不合法的按钮KEY长度', '40020'=>'不合法的按钮URL长度', '40021'=>'不合法的菜单版本号', '40022'=>'不合法的子菜单级数', '40023'=>'不合法的子菜单按钮个数', '40024'=>'不合法的子菜单按钮类型', '40025'=>'不合法的子菜单按钮名字长度', '40026'=>'不合法的子菜单按钮KEY长度', '40027'=>'不合法的子菜单按钮URL长度', '40028'=>'不合法的自定义菜单使用用户', '40029'=>'不合法的oauth_code', '40030'=>'不合法的refresh_token', '40031'=>'不合法的openid列表', '40032'=>'不合法的openid列表长度', '40033'=>'不合法的请求字符，不能包含\uxxxx格式的字符', '40035'=>'不合法的参数', '40038'=>'不合法的请求格式', '40039'=>'不合法的URL长度', '40050'=>'不合法的分组id', '40051'=>'分组名字不合法', '41001'=>'缺少access_token参数', '41002'=>'缺少appid参数', '41003'=>'缺少refresh_token参数', '41004'=>'缺少secret参数', '41005'=>'缺少多媒体文件数据', '41006'=>'缺少media_id参数', '41007'=>'缺少子菜单数据', '41008'=>'缺少oauth code', '41009'=>'缺少openid', '42001'=>'access_token超时', '42002'=>'refresh_token超时', '42003'=>'oauth_code超时', '43001'=>'需要GET请求', '43002'=>'需要POST请求', '43003'=>'需要HTTPS请求', '43004'=>'需要接收者关注', '43005'=>'需要好友关系', '44001'=>'多媒体文件为空', '44002'=>'POST的数据包为空', '44003'=>'图文消息内容为空', '44004'=>'文本消息内容为空', '45001'=>'多媒体文件大小超过限制', '45002'=>'消息内容超过限制', '45003'=>'标题字段超过限制', '45004'=>'描述字段超过限制', '45005'=>'链接字段超过限制', '45006'=>'图片链接字段超过限制', '45007'=>'语音播放时间超过限制', '45008'=>'图文消息超过限制', '45009'=>'接口调用超过限制', '45010'=>'创建菜单个数超过限制', '45015'=>'回复时间超过限制', '45016'=>'系统分组，不允许修改', '45017'=>'分组名字过长', '45018'=>'分组数量超过上限', '46001'=>'不存在媒体数据', '46002'=>'不存在的菜单版本', '46003'=>'不存在的菜单数据', '46004'=>'不存在的用户', '47001'=>'解析JSON/XML内容错误', '48001'=>'api功能未授权', '50001'=>'用户未授权该api'); 
			$this->ajaxReturn(false, $return_code[$data->errcode], $data->errcode);
		} else {
			$this->ajaxReturn(false, '对不起，你还未填写微信信息', 0);
		}
	}
	
}
 ?>