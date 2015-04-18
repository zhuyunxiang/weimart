<?php 
/**
* Log Service
*/
class LogService
{
	// 构造方法
	function __construct()
	{
		$this->logDao = M('log_list');
	}

	// 保存Log
	public function saveLog($user, $content)
	{
		$data = array('user'=>$user, 'content'=>$content, 'ip'=>get_client_ip());
		$this->logDao->add($data);
	}
}
 ?>