<?php 
/**
* 
*/
class PopularBrandAction extends Action
{
	
	// 获取品牌列表
	public function get_brand_list()
	{
		$result = array();

		for ($i=1; $i < 25; $i++) { 
			$arr = array("url"=>$i.".jpg");
			array_push($result, $arr);
		}

		$this->ajaxReturn($result, '品牌列表获取成功', 1);
	}
}
 ?>