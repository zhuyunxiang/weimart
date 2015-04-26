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
	public function save_shop_info()
	{
		if (isset($_SESSION['user'])) {
			$result = A('Shop', 'Service')->saveShopInfo($_POST);
			if ($result) {
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
}
 ?>