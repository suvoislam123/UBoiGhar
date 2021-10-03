
<?php
include("config.php");

if(isset($_POST["submit"]))
{
  $count=0;
  $sql = "SELECT username from user";
  $result=mysqli_query($con,$sql);
  while($row=mysqli_fetch_assoc($result))
  {

    if($row['username']==$_POST['username'])
    {
      $count=$count+1;
    }
  }

  if($count==0)
  {

    $user_full_name = $_POST['user_full_name'];
    $username = $_POST['username'];
      $user_email = $_POST['user_email'];
      $user_phone = $_POST['user_phone'];
      $user_password = $_POST['user_password'];


$insert_query="insert into user(user_full_name,user_email,username,password,mobile_number) values
  ('$user_full_name','$user_email','$username','$user_password','$user_phone')";
$run_query=mysqli_query($con,$insert_query);
?>

<?php
echo '<script type="text/javascript">
alert("Registration successful");';
header("Location:index.php");

 ?>
</script>

<?php
}

else {
  ?>
<script type="text/javascript">
alert("The username already exit");
</script>

<?php
}
}
?>
