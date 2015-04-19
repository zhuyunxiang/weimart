<?php 
/**
* 
*/
class HotBabyAction extends Action
{
	// 获取热卖宝贝-女装
	public function get_baby_rows_women()
	{

		$item = array();
		for ($i=4; $i < 8; $i++) { 
			$arr = array(
							"url"=>$i.".jpg",
							"babyName"=>"特芙娜", 
							"babyDesc"=>"粉色清新小碎花连衣裙",
							"babyPrice"=>"328"
						);
			array_push($item, $arr);
		}

		$result = array(0=>$item, 1=>$item);

		$this->ajaxReturn($result, '数据获取成功!', 1);
	}
}
 ?>