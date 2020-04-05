<?php
require_once '../load.php';
confirm_logged_in();

$id = $_SESSION['user_id'];
$user = getSingleUser($id);

if (is_string($user)) {
    $message = $user;
}

if (isset($_POST['submit'])) {
    $fname = trim($_POST['fname']);
    $username = trim($_POST['username']);
    $password = trim($_POST['password']);
    $email = trim($_POST['email']);

    $message = editUser($fname, $username, $password, $email, $id);
}

if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $tbl = 'tbl_products';
    $col = 'product_ID';
    $getProduct = getSingleProduct($tbl, $col, $id);

    if (isset($_POST['save'])) {
        $product = array(
            'id' => $id,
            'image' => $_FILES['image'],
            'name' => $_POST['name'],
            'price' => $_POST['price'],
            'description' => $_POST['description'],
            'category' => $_POST['category'],
        );

        $result = editProduct($product);

        $message = $result;
    }
}

$categories_tbl = 'tbl_categories';
$category = getAll($categories_tbl);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Product</title>
</head>
<body>

<?php echo !empty($message) ? $message : ''; ?>
   <form action="admin_editproduct.php?id=<?php echo $id ?>" method="POST" enctype="multipart/form-data">

   <?php while ($info = $getProduct->fetch(PDO::FETCH_ASSOC)): ?>

    <label>Product Image:</label>
    <input type="file" name="image" value="<?php echo $info['image']; ?>">
   
    <label>Product Name:</label>
    <input type="text" name="name" value="<?php echo $info['name'];?>"><br><br>

    <label>Product Price:</label>
    <input type="text" name="price" value="<?php echo $info['price'];?>"><br><br>

    <label>Product Description:</label>
    <textarea name="text" name="description" value="<?php echo $info['description'];?>"><br><br>

    <label>Product Category:</label>
    <select name="category" required>
        <option>Select Category</option>
        <?php while ($row = $category->fetch(PDO::FETCH_ASSOC)): ?>
            <option value="<?php echo $row['category_id'] ?>"><?php echo $row['category_name']; ?></option>
        <?php endwhile;?>
    </select>
        </div>
        <div class="form-group">
        <a href="index.php" class="btn btn-secondary">Cancel</a>
        <button type="submit" name="save">Save changes</button>
        <?php endwhile;?>
        </form>
      
    
</body>
</html>