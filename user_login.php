<?php 
 require_once "config.php";
 session_start();
if(isset($_POST['submit']))
{
	
	echo '<script> alert("Hi")</script>';
	$count=0;
    $sql="SELECT * from user where username='$_POST[user_email]'|| user_email='$_POST[user_email]' && password ='$_POST[user_password]'";
    $result = mysqli_query($con,$sql);
    $count = mysqli_num_rows($result);
    if($count == TRUE)
    {
    	$sql="SELECT * from user where username='$_POST[user_email]'|| user_email='$_POST[user_email]' && password ='$_POST[user_password]'";
    	$result = mysqli_query($con,$sql);
    	$res = mysqli_fetch_assoc($result);
    	$_SESSION['login_user']= $res['username'];
    	$_SESSION['name']= $res['user_full_name'];
    	$_SESSION['email']=$res['user_email'];
    	$_SESSION['phone']=$res['mobile_number'];
    	$_SESSION['id']=$res['user_id'];
    	$_SESSION['password']=$res['password'];
    	$_SESSION['type']=$res['user_type'];
    	header("location:index.php");
    }
    else{?>
    	<script type="text/javascript">
    		alert("Email and password dont matched");

    	</script>
    	<?php
    	


    }



}
?>