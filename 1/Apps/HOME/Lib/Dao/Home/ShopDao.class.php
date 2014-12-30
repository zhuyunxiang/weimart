<?php 
/**
* Shop dao.
*/
import('@.Dao.BaseDao');
class ShopDao extends BaseDao
{
	public static $tableName;

	// Construct function.
	function __construct()
	{
		$this->tableName = "Shop";
	}
}

 ?>