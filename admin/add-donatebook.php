<?php
    require_once('functions/function.php');
    needLogged();
    get_header();
    get_sidebar();
?>
    <div class="col-md-12">
    	<form class="form-horizontal" action="" method="post" enctype="multipart/form-data">
    	<div class="panel panel-primary">
            <div class="panel-heading">
                <div class="col-md-9 heading_title">
                    Add New Donate Book
                 </div>
                 <div class="col-md-3 text-right">
                 	<a href="all-donatebook.php" class="btn btn-sm btn btn-primary"><i class="fa fa-th"></i> All Donate Books</a>
                </div>
                <div class="clearfix"></div>
            </div>
          <div class="panel-body">
              <?php
                  if(!empty($_POST)){
                      $book_title=$_POST['book_title'];
                      $book_subtitle=$_POST['book_subtitle'];
                      $book_catg=$_POST['book_catg'];
                      $book_doner=$_POST['book_doner'];
                      $book_price=$_POST['book_price'];
                      $image=$_FILES['pic'];
                      $imageName='user_'.time().'_'.rand(10000000,1000000000).'.'.pathinfo($image['name'],PATHINFO_EXTENSION);
                      if(!empty($book_title)){

                          $insert="INSERT INTO adm_donatebook(book_title,book_subtitle,book_category,book_doner,book_price,book_img)
                          VALUES('$book_title','$book_subtitle','$book_catg','$book_doner','$book_price','$imageName')";
                          if(mysqli_query($con,$insert)){
                              move_uploaded_file($image['tmp_name'],'uploads/'.$imageName);
                              echo "Donate book Successfully Published";
                          }else{
                              echo "Failed publish";
                          }

                      }else{
                            echo "Please, enter book title";
                      }
                  }
              ?>
              <div class="form-group">
                <label for="" class="col-sm-3 control-label">Book Title</label>
                <div class="col-sm-8">
                  <input type="text" class="form-control" name="book_title">
                </div>
              </div>
              <div class="form-group">
                <label for="" class="col-sm-3 control-label">Book subtitle</label>
                <div class="col-sm-8">
                  <input type="text" class="form-control" name="book_subtitle">
                </div>
              </div>
              <div class="form-group">
                <label for="" class="col-sm-3 control-label">Book Category</label>
                <div class="col-sm-8">
                  <input type="text" class="form-control" name="book_catg">
                </div>
              </div>
              <div class="form-group">
                <label for="" class="col-sm-3 control-label">Book Doner</label>
                <div class="col-sm-8">
                  <input type="text" class="form-control" name="book_doner">
                </div>
              </div>
              <div class="form-group">
                <label for="" class="col-sm-3 control-label">Book Price</label>
                <div class="col-sm-8">
                  <input type="text" class="form-control" placeholder="00.00" name="book_price">
                </div>
              </div>
              <div class="form-group">
                <label for="" class="col-sm-3 control-label">Book Cover image(200*212)</label>
                <div class="col-sm-8">
                  <input type="file" name="pic">
                </div>
              </div>
          </div>
          <div class="panel-footer text-center">
            <button class="btn btn-sm btn-primary">Publish</button>
          </div>
        </div>
        </form>
    </div><!--col-md-12 end-->
<?php
    get_footer();
?>
