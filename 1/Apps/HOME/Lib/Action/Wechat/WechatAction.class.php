<?php 
/**
* 
*/
class WechatAction extends Action
{
	
	public function index(){
		/* 加载微信SDK */
		import('@.ORG.Wechat.ThinkWechat');

		$weixin = new ThinkWechat("zyx");

		/* 获取请求信息 */
		$data = $weixin->request();
		
		/* 获取回复信息 */
		// 这里的回复信息是通过判断请求内容自行定制的， 不在 SDK范围内，请自行完成
		list($content, $type) = $this->reply($data);
		S('last_wechat_request', $data);
		/* 响应当前请求 */
		$weixin->response($content, $type);
	}

	private function reply($data){
		/*微信接口处理主函数*/ 
		if('event' == $data['MsgType']){
		//处理事件
			import('@.ORG.Wechat.Event_data');
			$event_data = new Event_data();
			$reply = $event_data->index($data);
		} else{
			import('@.ORG.Wechat.Text_data');
			$text_data = new Text_data();
			$reply = $text_data->index($data);
		}
		
		return $reply;
	}

	public function test()
	{
		$data = S("last_wechat_request");
		dump($data);
	}
}

 ?>