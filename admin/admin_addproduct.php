<?php
require_once '../load.php';
confirm_logged_in();

$category_table = 'tbl_categories';
$categories     = getAll($category_table);

if (isset($_POST['add'])) {
    $movie = array(
        'image'   => $_FILES['image'],
        'name'   => trim($_POST['name']),
        'price'    => trim($_POST['price']),
        'description'   => trim($_POST['description']),
        'category'   => trim($_POST['categoryList']),
    );

    $result  = addProduct($product);
    $message = $result;
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Product</title>

    <?php echo !empty($message) ? $message : ''; ?>
    <form action="admin_addmovie.php" method="post" enctype="multipart/form-data">
        <label>Product Image:</label><br>
        <input type="file" name="image" value=""><br><br>

        <label>Product Name:</label><br>
        <input type="text" name="name" value=""><br><br>

        <label>Product Price:</label><br>
        <input type="text" name="price" value=""><br><br>

        <label>Product Description:</label><br>
        <textarea name="description"></textarea><br><br>

        <label>Product Category:</label><br>
        <select name="categoryList">
            <option>Select a product category</option>
            <?php while ($row = $categories->fetch(PDO::FETCH_ASSOC)): ?>
                <option value="<?php echo $row['category_id'] ?>"><?php echo $row['category_name']; ?></option>
            <?php endwhile;?>
        </select>
        <br><br>
        <button type="submit" name="submit">Add Product</button>
    </form>

</head>
<body>
    
</body>
</html>