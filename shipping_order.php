<?php
   session_start();
   require_once('functions/function.php');
   get_header();

 if(isset($_POST['submit'])){
   $fullname=$_POST['fullname'];
   $email=$_POST['email'];
   $mobile=$_POST['mobile'];
   $address=$_POST['address'];
   $city=$_POST['city'];
   $zipcode=$_POST['zipcode'];
   $paymentMethod=$_POST['paymentMethod'];
   $paymentNumber=$_POST['paymentNumber'];
   $transactionId=$_POST['transactionId'];

   if(!empty($mobile)){

        $insert="INSERT INTO adm_billing_info(fullname,email,mobile,address,city,zipcode,paymentMethod,paymentNumber,transactionId)
         VALUES ('$fullname','$email','$mobile','$address','$city','$zipcode','$paymentMethod','$paymentNumber','$transactionId')";
        if(mysqli_query($con,$insert)){
           echo '<script>alert("You Order is Now hold for approve.")</script>';
        }else{
            echo '<script>alert("You order is not confirm.")</script>';
        }

    }else{
          echo '<script>alert("Please, Give your billing info.")</script>';
    }
 }
 ?>

 <!--design start-->
   <form method="POST">
 <div class="container">
   <div class="shipping-area">

  <div class="row mt-5">
 <!--payment details start-->
  <div class="col-md-8">
  <div class="col-md-12 billing-address bg-gray">
  <h3>Billing Address</h3>
  <div class="billaddress" style="border:2px solid #03befc;padding: 20px;">
  
  
  </style>
  <form>
    <div class="form-group">
    <label for="name">Full Name</label>
    

    <input <?php if(!empty($_COOKIE['login_user'])){echo 'type="text" class="form-control" name="fullname" value = "'.$_COOKIE["name"].'" id="email" required';}else{ echo 'type="email" class="form-control" name="email"  id="email" required';} ?>>
    
  </div>
  <div class="form-group">
    <label for="email">Email address</label>

    <input <?php if(!empty($_COOKIE['login_user'])){echo 'type="email" class="form-control" name="email" value = "'.$_COOKIE["email"].'" id="email" required';}else{ echo 'type="email" class="form-control" name="email"  id="email" required';} ?>>

  </div>
   <div class="form-group">
    <label for="phone">Mobile Number</label>
    
    <input <?php if(!empty($_COOKIE['login_user'])){echo 'type="text" class="form-control" name="mobile" value = "'.$_COOKIE["phone"].'" id="email" required';}else{ echo 'type="text" class="form-control" name="mobile"  id="mobile" required';} ?>>
  </div>
 <div class="form-group">
    <label for="address">Address</label>
    <input type="text" class="form-control" name="address" id="" placeholder="House No, Block Number, Road Number, Upozilla" required>
  </div>
  <div class="form-group">
    <label for="city">City</label>
    <input type="text" class="form-control" name="city" id="" placeholder="Cumilla" required>
  </div>
  <div class="form-group">
    <label for="zip">Zip Code</label>
    <input type="text" class="form-control" name="zipcode" id="" placeholder="#0238" required>
  </div>
</form>
  </div>
  </div>
  <!---->
    <div class="col-md-12 payment bg-gray">
  <h3 class="py-3">Payment</h3>
  <div class="payment" style="border:2px solid #03befc;padding: 20px;">
    <label for="text">Payment Method</label>
    <br>
  <div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="paymentMethod" id="inlineRadio1" value="Bkash">
  <label class="form-check-label" for="inlineRadio1">Bkash</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="paymentMethod" id="inlineRadio2" value="Nagad">
  <label class="form-check-label" for="inlineRadio2">Nagad</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="paymentMethod" id="inlineRadio2" value="Rocket">
  <label class="form-check-label" for="inlineRadio2">Rocket</label>
</div>
 <div class="form-group py-2">
   <label for="num">Choose one number for send money</label>
    <label for="num">Bkash: 01309080748 Rocket: 01838082983 Nagad: 01838082983</label>
    <label for="num">Mobile Number</label>
    <input type="text" class="form-control" name="paymentNumber" id="" required>
  </div>
    <div class="form-group">
    <label for="tran_id">Transaction Id</label>
    <input type="text" class="form-control" name="transactionId" id="" required>
  </div>

  </div>
  </div>
  </div><!--payment details end-->
  <!--cart details start-->


  <div class="col-md-4">
    <div class="col-md-12">
     <h4>Cart
           <span class="price" style="color:black">
             <i class="fa fa-shopping-cart"></i>
             <b>4</b>
           </span>
         </h4>
         <table class="table table-bordered">
   					<tr>
   						<th width="40%">Item Name</th>
   						<th width="10%">Quantity</th>
   						<th width="15%">Price</th>
   						<th width="15%">Total</th>

   					</tr>
   					<?php
   					if(!empty($_SESSION["shopping_cart"]))
   					{
   						$total = 0;
   						foreach($_SESSION["shopping_cart"] as $keys => $values)
   						{
   					?>
   					<tr>
   						<td><?php echo $values["item_name"]; ?></td>
   						<td><?php echo $values["item_quantity"]; ?></td>
   						<td>$<?php echo $values["item_price"]; ?></td>
   						<td>$<?php echo number_format($values["item_quantity"] * $values["item_price"], 2);?></td>

   					</tr>
   					<?php
   							$total = $total + ($values["item_quantity"] * $values["item_price"]);
   						}
   					?>
   					<tr>
   						<td colspan="3" align="right">Total</td>
   						<td align="right">$<?php echo number_format($total, 2); ?></td>

   					</tr>
   					<?php
   					}
   					?>

   				</table>
     </div>
  </div><!--cart details end-->
</div>
<div class="placeorderbtn" style="padding-top:30px;">
  <a href="cart.php"> <input type="button" name="back" class="btn" value="Back To Cart" style="margin-left:15px;background-color:#03befc; color:#fff;"></a>
  <input type="submit" name="submit" class="btn" style="background-color:#03befc; color:#fff; margin-left:430px;" value="Place Order">
</div>

</div>
</div></form>
 <!--design end-->
<?php
   get_footer();
 ?>
