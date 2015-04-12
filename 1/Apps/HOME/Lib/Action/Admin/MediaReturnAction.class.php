<?php 
/**
* 
*/
class MediaReturnAction extends Action
{
	public function index()
	{
		$this->display();
	}

	// public function save_img()
	// {
	// 	$filename = time().$_FILES['file']['name'];
	// 	$destination = "./upload/Uploads/media_img/" . $filename;
	// 	move_uploaded_file( $_FILES['file']['tmp_name'] , $destination );
	// 	echo $filename;
	// }

	// Ajax 数据交互
	// 获取当前Key的所有Meddia Item
	public function get_media_items()
	{
		$id = $_POST['msg_id'];
		$data = A('Admin/MediaReturn', 'Service')->getItemsByMsgId($id);
		$this->ajaxReturn($data, '数据获取成功', 1);
	}

	public function save_img()
	{
		if (!empty($_FILES)) {
            import("@.ORG.UploadFile");
            $config=array(
                'allowExts'=>array('jpg','gif','png'),
                'savePath'=>'./Public/Uploads/media_img/',
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