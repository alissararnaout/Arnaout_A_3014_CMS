<?php

require_once '../load.php';
confirm_logged_in();

if(isset($_GET['id'])){
    $product_id = $_GET['id'];
    $delete_result = deleteProduct($product_id);

    if(!$delete_result){
        $message = 'Failed to delete product.';
    }
}

?>