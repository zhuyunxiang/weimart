<?php 
/**
* 
*/
class TestAction extends Action
{
	
	public function test()
	{
		A('Test', 'Service')->test();
	}

	public function show()
	{
		A('Test', 'Dao')->test();
	}
}
 ?>