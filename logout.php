<?php
/*session_start();
session_destroy();
header("Location: ../index.php");
exit();
*/

setcookie('name',"",time() - 1*60*60*365);
setcookie('login_user',"",time() - 1*60*60*365);
setcookie('email',"",time() - 1*60*60*365);
setcookie('phone',"",time() - 1*60*60*365);
setcookie('id',"",time() - 1*60*60*365);
setcookie('password',"",time() - 1*60*60*365);
setcookie('type',"",time() - 1*60*60*365);
header("Location:index.php");
exit();
?>
