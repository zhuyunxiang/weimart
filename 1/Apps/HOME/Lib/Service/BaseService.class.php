<?php 
/**
* Base Service 基Service
*/
class BaseService
{
	public function saveInfoAjax()
	{
		return "base test";
	}

	public function removeInfoAjax()
	{
		# code...
	}

	// 通用获取信息Function
	// $dao 所用数据库表对象
	// $condition 查询条件
	// $order 排序条件
	public function getInfo($dao, $condition = null, $order = null)
	{
		return $this->$dao
		->where($condition)
		->order($order)
		->select();
	}

	// 通用获取记录总条数Function
	// $dao 所用数据库表对象
	// $condition 查询条件
	public function getCount($dao, $condition = null)
	{
		return $this->$dao
		->where($condition)
		->count();
	}

	// 通用获取信息In Page Function
	// $dao 所用数据库表对象
	// $condition 查询条件
	// $order 排序条件
	// $page 分页条件(page=>当前页码,pageSize=>每页条数)
	public function getInfoInPage($dao, $condition = null, $order_str = null, $page = array('page'=>1, 'pageSize'=>10))
	{
		return $this->$dao
		->where($condition)
		->order($order_str)
		->page($page['page'], $page['pageSize'])
		->select();
	}


}
 ?>