<?php
require_once '../load.php';
confirm_logged_in();


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

$category_tbl = 'tbl_categories';
$category = getAll($category_tbl);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Product</title>
</head>
<body>

<h3><a href="index.php">Admin Dashboard</a></h3>

<?php echo !empty($message) ? $message : ''; ?>
   <form action="admin_editproduct.php?id=<?php echo $id ?>" method="POST" enctype="multipart/form-data">

   <?php while ($info = $category->fetch(PDO::FETCH_ASSOC)): ?>

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
        <button type="submit" name="save">Save changes</button>
        <?php endwhile;?>
        </form>
      
    
</body>
</html>