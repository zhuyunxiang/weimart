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

	public function save_img()
	{
		$filename = time().$_FILES['file']['name'];
		$destination = "./Public/Uploads/media_img/" . $filename;
		move_uploaded_file( $_FILES['file']['tmp_name'] , $destination );
		echo $filename;
	}

}
 ?>