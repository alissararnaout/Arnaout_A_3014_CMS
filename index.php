<?php
require_once 'load.php';

if (isset($_GET['filter'])) {
    $args = array(
        'tbl' => 'tbl_products',
        'tbl2' => 'tbl_categories',
        'tbl3' => 'tbl_product_cat',
        'col' => 'product_id',
        'col2' => 'category_id',
        'col3' => 'category_name',
        'filter' => $_GET['filter'],
    );
    $getProducts = getProductsbyFilter($args);
}else {
    $product_table = 'tbl_products';
    $getProducts = getAll($product_table);
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SportsCheck CMS</title>
</head>
<body>
    <?php include 'templates/header.php';?>

    <?php while ($row = $getProducts->fetch(PDO::FETCH_ASSOC)): ?>

    <div class="product-item">
        <img src="images/<?php echo $row['product_image']; ?>" alt="<?php echo $row['product_name']; ?>">
        <h2><?php echo $row['product_name']; ?></h2>
            <h4><?php echo $row['product_price']; ?></h4>
            <a href="details.php?id=<?php echo $row['product_id']; ?>">Read More...</a>
    </div>
    <?php endwhile; ?>

</body>
</html>