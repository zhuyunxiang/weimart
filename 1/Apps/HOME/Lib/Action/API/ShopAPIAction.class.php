<?php 
/**
* Shop Action
* 店铺信息
* 纯逻辑接口，对外公开
*/
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: X-Requested-With');
class ShopAPIAction extends Action
{
	// 保存
	// 所传的数据格式如Shop表,有shop_id字段就修改,否则就插入
	public function save_shop_info()
	{
		if (isset($_SESSION['user'])) {
			$result = A('Shop', 'Service')->saveShopInfo($_POST);
			if ($result) {
				A('Log', 'Service')->saveLog($_SESSION['user']['user_name'], $result['info'].' [save Shop Info ID:'.$result['data'].' Data:'.implode('', $_POST).']');
				$this->ajaxReturn($result['data'], $result['info'], $result['status']);
			}
			$this->ajaxReturn(false, '内部错误!', 0);
		}
	}

	// 获取店铺信息
	public function get_shop_info()
	{
		$result = A('Shop', 'Service')->getShopWithUser();
		$this->ajaxReturn($result, '数据获取成功!', 1);
	}

	// 保存店铺头像
	public function save_shop_img()
	{
		if (!empty($_FILES)) {
            import("@.ORG.UploadFile");
            $config=array(
                'allowExts'=>array('jpg','gif','png'),
                'savePath'=>'./Public/Uploads/shop_img/',
                // 'saveRule'=>'time',
            );
            $upload = new UploadFile($config);
            $upload->thumb=true;
            $upload->thumbMaxHeight=100;
            $upload->thumbMaxWidth=100;
            if (!$upload->upload()) {
                $this->error($upload->getErrorMsg());
            } else {
            	$id = $_POST['now_id'];
                $info = $upload->getUploadFileInfo();
				echo $info[0]['savename'];
            }
		}
	}

	// 保存店铺头像 for app
	public function save_shop_img_for_app()
	{
		if (!empty($_FILES)) {
            import("@.ORG.UploadFile");
            $config=array(
                'allowExts'=>array('jpg','gif','png'),
                'savePath'=>'./Public/Uploads/shop_img/',
                // 'saveRule'=>'time',
            );
            $upload = new UploadFile($config);
            $upload->thumb=true;
            $upload->thumbMaxHeight=100;
            $upload->thumbMaxWidth=100;
            if (!$upload->upload()) {
                $this->error($upload->getErrorMsg());
            } else {
            	$id = $_POST['now_id'];
                $info = $upload->getUploadFileInfo();
				$result = $info[0]['savename'];
				// echo $info[0]['savename'];

				// 判断非SAE环境
				if(!defined('SAE_TMP_PATH')){
					echo "http://".$_SERVER['HTTP_HOST'].'/weimart/Public/Uploads/shop_img/'.$result;
				} else {
					echo file_domain('Public').'/Uploads/shop_img/'.$result;
				}
            }
		}
	}

	// 获得所有店铺信息
	public function get_all()
	{
		$result = A('Shop', 'Service')->getAllShops();
		$this->ajaxReturn($result, '数据获取成功!', 1);
	}

	// 获得所有推荐店铺
	public function get_recommend()
	{
		$result = A('Shop', 'Service')->getAllRecommendShops();
		$this->ajaxReturn($result, '数据获取成功!', 1);
	}


}
 ?>