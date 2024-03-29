<?php
  session_start();
	require_once '../config/connect.php';
	if (!isset($_SESSION['email']) & empty($_SESSION['email'])) {
		header('location: login.php');
	}

  if(isset($_POST) & !empty($_POST)){
   $name = mysqli_real_escape_string($connection, $_POST['productname']);
   $description = mysqli_real_escape_string($connection, $_POST['productdescription']);
   $category = mysqli_real_escape_string($connection, $_POST['productcategory']);
   $price = mysqli_real_escape_string($connection, $_POST['productprice']);

    if(isset($_FILES) & !empty($_FILES)){
      $name = $_FILES['productimage']['name'];
      $size = $_FILES['productimage']['size'];
      $type = $_FILES['productimage']['type'];
      $tmp_name = $_FILES['productimage']['tmp_name'];

      $max_size =  1000000;
      $extension = substr($name, strpos($name, '.')+1);

      if(isset($name) & !empty($name)){
        if(($extension=="jpg" || $extension=="jpeg") & $type="image/jpeg" && $size<=$max_size){
          $location = 'uploads/';
          if(move_uploaded_file($tmp_name , $location.$name)){
            $smsg = "Uploaded Successfully";
          }else {
            $fmsg = "Failed to Upload";
          }
        }else{
          $fmsg =  "Only JPG files are allowed and less than 1MB";
        }
      }else{
        $fmsg = "Please select a file";
      }
    }

   $sql = "INSERT INTO products (name, description , catid , price, thumb ) VALUES('$name', '$description' , '$category' , '$price' , '$location$name')";
   $res = mysqli_query($connection, $sql);
   if ($res) {
     //$smsg =  "Product Created";
     header('location: products.php');
   }
   else {
      $fmsg =  "Failed to create Product";
   }

 }

	?>
<?php include 'inc/header.php'; ?>
<?php include 'inc/nav.php'; ?>

<section id="content">
  <div class="content-blog">
    <div class="container">
      <?php if(isset($fmsg)){ ?><div class="alert alert-danger" role="alert">
      <?php echo $fmsg; ?></div><?php } ?>
      <?php if(isset($smsg)){ ?><div class="alert alert-success" role="alert">
      <?php echo $smsg; ?></div><?php } ?>
      <form method="post" enctype="multipart/form-data">

        <div class="form-group">
          <label for="Productname">Product Name</label>
          <input type="text" class="form-control" name="productname" id="Productname" placeholder="Product Name">
        </div>

        <div class="form-group">
          <label for="productdescription">Product Description</label>
          <textarea rows="3"  name='productdescription'>Enter Description</textarea>
        </div>

        <div class="form-group">
          <label for="prodctcategory">Product Category</label>
          <select class="form-control" id="productcategory" name="productcategory">
            <option value="">----SELECT CATEGORY"----</option>
            <?php
                 $sql = "SELECT * FROM category";
                 $res = mysqli_query($connection, $sql);
                 while ($r = mysqli_fetch_assoc($res)) {
            ?>
              <option value="<?php echo $r['id']; ?>"><?php echo $r['name']; ?></option>
            <?php } ?>
          </select>
        </div>

        <div class="form-group">
          <label for="productprice">Product Price</label>
          <input type="text" class="form-control" name="productprice" id="productprice" placeholder="Product Price">
        </div>

        <div class="form-group">
          <label for="productimage">Product Image</label>
          <input type="file" name="productimage" id="productimage">
          <p class="help-block">Only jpg/png are allowed.</p>
        </div>

        <button type="submit" class="btn btn-default">Submit</button>

      </form>

    </div>
  </div>
</section>
<?php include 'inc/footer.php'; ?>
