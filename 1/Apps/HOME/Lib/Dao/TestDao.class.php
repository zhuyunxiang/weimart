<?php 
/**
* 
*/
class TestDao
{
	
	public function test()
	{
		$m = D("User");
		$arr = $m->relation(true)->select();
		dump($arr);
	}
}
 ?>