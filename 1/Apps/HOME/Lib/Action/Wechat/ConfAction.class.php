<?php 
/**
* 
*/
class ConfAction extends Action
{
	public function set_menu()
	{
		$data = A('Wechat','Util')->get_access_token('1111','222');
		dump($data);
		// wx713da7bfd9175724
		// 101fdc6b6f08f76505b98a84ef0111dc
	}
	
}
 ?>