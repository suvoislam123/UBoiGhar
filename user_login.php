<?php 
 require_once "config.php";
if(isset($_POST['submit']))
{
	
	
	$count=0;
    $sql="SELECT * from user where username='$_POST[user_email]'|| user_email='$_POST[user_email]' && password ='$_POST[user_password]'";
    $result = mysqli_query($con,$sql);
    $count = mysqli_num_rows($result);
    if($count == TRUE)
    {
    	$sql="SELECT * from user where username='$_POST[user_email]'|| user_email='$_POST[user_email]' && password ='$_POST[user_password]'";
    	$result = mysqli_query($con,$sql);
    	$res = mysqli_fetch_assoc($result);
        setcookie('name',$res['user_full_name'],time() + 1*60*60*365);
        setcookie('login_user',$res['username'],time() + 1*60*60*365);
        setcookie('email',$res['user_email'],time() + 1*60*60*365);
        setcookie('phone',$res['mobile_number'],time() + 1*60*60*365);
        setcookie('id',$res['user_id'],time() + 1*60*60*365);
        setcookie('password',$res['password'],time() + 1*60*60*365);
        setcookie('type',$res['user_type'],time() + 1*60*60*365);
        /*
    	$_SESSION['login_user']= $res['username'];
    	$_SESSION['name']= $res['user_full_name'];
    	$_SESSION['email']=$res['user_email'];
    	$_SESSION['phone']=$res['mobile_number'];
    	$_SESSION['id']=$res['user_id'];
    	$_SESSION['password']=$res['password'];
    	$_SESSION['type']=$res['user_type'];
    	header("location:index.php");*/
        header("location:index.php");
    }
    else{?>
    	<script type="text/javascript">
    		alert("Email and password don't matched");
            window.location.href = "http://localhost/UBoighar/index.php";


    	</script>
    	<?php
    	


    }



}
?>