<?php
   require_once('functions/function.php');
   get_header();
 ?>

 <!--unused book start-->
 <div class="unused-book-area">
 <div class="text-center">
   <h3 class="font-weight-bold text-primary">Second Hand Books</h3>
 </div>
 <div class="container d-flex justify-content-center mt-5">
 <div class="row">
   <?php
       $sel="SELECT * FROM adm_sechandbook ORDER BY secbook_id DESC";
       $Q=mysqli_query($con,$sel);
       while($data=mysqli_fetch_assoc($Q)){
    ?>
     <div class="col-md-3">
         <div class="product-wrapper mb-45 text-center">
             <div class="product-img"> <a href="#" data-abc="true"> <img src="admin/uploads/<?= $data['secbook_img']; ?>" alt=""> </a> <span class="text-center"><i class="fa fa-rupee"></i>TK. <?= $data['secbook_price']; ?></span>
                 <div class="product-action">
                     <div class="product-action-style"> <a href="#"> <i class="fa fa-plus"></i> </a> <a href="#"> <i class="fa fa-heart"></i> </a> <a href="#"> <i class="fa fa-shopping-cart"></i> </a> </div>
                 </div>
             </div>
             <div class="text-center mt-3">
               <h5><b><?= $data['secbook_title']; ?></b> </h5>
               <h5 class="text-muted"><i>Edition: <?= $data['secbook_edition']; ?></i></h5>
             </div>
         </div>
     </div>
     <?php
        }
      ?>
     
 </div>
 </div>
 </div>
 <!--unused book end-->

<?php
   get_footer();
 ?>
