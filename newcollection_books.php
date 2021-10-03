<?php
   require_once('functions/function.php');
   get_header();
 ?>

 <!-- products section -->
 <section id="products">
     <div class="container my-5">
       <div class="text-center">
         <h3 class="font-weight-bold text-primary">New Collection Books</h3>
       </div>
         <div class="d-flex flex-row">
             <div class="text-muted m-2" id="res"> <a href="newcollection_books.php">Showing 44 results</a> </div>
             <div class="ml-auto mr-lg-4">
                 <div id="sorting" class="border rounded p-1 m-1"> <span class="text-muted">Sort by</span> <select name="sort" id="sort">
                         <option value="popularity"><b>Popularity</b></option>
                         <option value="prcie"><b>Price</b></option>
                         <option value="rating"><b>Rating</b></option>
                     </select> </div>
             </div>
         </div>
         <div class="row">
           <?php
               $sel="SELECT * FROM adm_newbook ORDER BY newbook_id DESC";
               $Q=mysqli_query($con,$sel);
               while($data=mysqli_fetch_assoc($Q)){
            ?>
             <div class="col-lg-3 col-md-6 col-sm-10 offset-md-0 offset-sm-1 mb-3">
                 <div class="card"> <img class="card-img-top img-fluid" src="admin/uploads/<?= $data['newbook_img']; ?>">
                     <div class="card-body">
                         <h5><b><?= $data['newbook_title']; ?></b> </h5>
                         <h6 class="text-muted"><i>Edition: <?= $data['newbook_edition']; ?></i> </h6>
                         <div class="d-flex flex-row my-2">
                             <div class="text-muted">TK.<?= $data['newbook_price']; ?></div>
                             <div class="ml-auto"> <span class="text-muted">Stock: <?= $data['newbook_stock']; ?></span> </div>
                         </div> <button class="btn w-100 rounded my-2">Add to cart</button>
                     </div>
                 </div>
             </div>
             <?php
               }
              ?>

         </div>
     </div>
 </section>
 <!--Product section end-->

<?php
   get_footer();
 ?>
