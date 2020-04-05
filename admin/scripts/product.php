<?php

    // add product
    function addProduct($product)
    {
    try {
        $pdo = Database::getInstance()->getConnection();

        $image          = $product['image'];
        $upload_file    = pathinfo($image['name']);
        $accepted_types = array('gif', 'jpg', 'jpe', 'png', 'jpeg', 'webp');
        if (!in_array($upload_file['extension'], $accepted_types)) {
            throw new Exception('Wrong file type!');
        }

        $image_path = '../images/';

        $generated_name     = md5($upload_file['filename'] . time());
        $generated_filename = $generated_name . '.' . $upload_file['extension'];
        $targetpath         = $image_path . $generated_filename;

        if (!move_uploaded_file($image['tmp_name'], $targetpath)) {
            throw new Exception('Failed to move uploaded file, check permission!');
        }

        $insert_product_query = 'INSERT INTO tbl_products(product_image,product_name,product_price,product_desc)';
        $insert_product_query .= ' VALUES(:product_image,:product_name,:product_price,:product_desc)';

        $insert_product        = $pdo->prepare($insert_product_query);
        $insert_product_result = $insert_product->execute(
            array(
                ':product_image'     => $generated_filename,
                ':product_name'     => $movie['name'],
                ':product_price'    => $movie['price'],
                ':product_desc'     => $movie['description'],
            )
        );

        $last_uploaded_id = $pdo->lastInsertId();
        if ($insert_product_result && !empty($last_uploaded_id)) {
            $update_category_query = 'INSERT INTO tbl_product_cat(product_cat_id, category_id) VALUES(:product_id, :category_id)';
            $update_category       = $pdo->prepare($update_category_query);

            $update_category_result = $update_category->execute(
                array(
                    ':product_id' => $last_uploaded_id,
                    ':category_id'  => $product['category'],
                )
            );
        }

        redirect_to('index.php');
    } catch (Exception $e) {
        $error = $e->getMessage();
        return $error;
    }


    // edit product
    function editProduct($product)
{

    try {
        $pdo = Database::getInstance()->getConnection();

        $update_product_query = 'UPDATE tbl_products SET name = :name, price = :price, description = :description, image = :image WHERE product_ID = :id';

        $update_set = $pdo->prepare($update_product_query);
        $update_product_result = $update_set->execute(
        array(
            ':id' => $product['id'],
            ':name' => $product['title'],
            ':price' => $product['price'],
            ':description' => $product['description'],
            ':image' => $product['image'],
        )
        );

        $this_product_id = $product['id'];

        if ($update_product_result && !empty($this_product_id)) {
            $update_category_query = 'UPDATE tbl_product_cat SET category_ID = :category_id WHERE product_ID = :product_id';
            $update_category = $pdo->prepare($update_category_query);

            $update_category_result = $update_category->execute(
                array(
                    ':product_id' => $this_product_id,
                    ':category_id' => $product['category'],
                )
            );
        }

        redirect_to('index.php');

    } catch (Exception $e) {
        $error = $e->getMessage();
        return $error;
    }
}

// delete product
function deleteProduct($product_id)
{
    $pdo = Database::getInstance()->getConnection();

    $delete_product_query = 'DELETE FROM tbl_products WHERE product_ID = :id';
    $delete_product_set = $pdo->prepare($delete_product_query);
    $delete_product_result = $delete_product_set->execute(
        array(
            ':id' => $product_id,
        )
    );

    if ($delete_product_result && $delete_product_set->rowCount() > 0) {
        redirect_to('index.php');
    } else {
        return false;
    }

}

}