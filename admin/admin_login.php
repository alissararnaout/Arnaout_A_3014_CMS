<?php
    require_once '../load.php';

    $ip = $_SERVER['REMOTE_ADDR'];

    if(isset($_POST['submit'])){
        $username = trim($_POST['username']);
        $password = trim($_POST['password']);

        if(!empty($username) && !empty($password)){
            $message = login($username, $password, $ip);
    }else {
        $message = 'Please fill out the required field';
    }
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
</head>
<body>
    <h1><a href="../index.php">SportCheck</a></h1>
    <h2>Login</h2>

    <?php echo !empty($message)? $message: ''; ?>
    
    <form action="admin_login.php" method="post">
        <label for="username">Username:</label>
        <input type="text" name="username" id="username" value="">

        <label for="password">Password:</label>
        <input type="password" name="password" id="password" value="">

        <button name="submit">Submit</button>
    </form>


</body>
</html>