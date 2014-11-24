<?php 
/**
* Home Action
*/
class HomeAction extends Action
{
	/**
	* Show index.html page.
	*/
	public function index()
	{
		$this->display();
	}

	public function home()
	{
		$this->display();
	}

	public function test()
	{
		echo "string";
	}
}

 ?>