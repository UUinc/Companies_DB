<!Doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" href="style.css" />
        <title>Login</title>
    </head>
    <body>
        <div class="container">
            <div>
                <h1>Login</h1>
                <form action="#" method="post">
                    <table class="email_form">
                        <tr>
                            <td>Username:</td>
                            <td><input id="username" type="text" name="username" placeholder="root"/></td>
                        </tr>
                        <tr>
                            <td>Password:</td>
                            <td><input id="password" type="password" name="password" placeholder="****"/></td>
                        </tr>
                    </table>
                    <div class="container">
                        <div>
                            <input class="button" type="submit" name="login_btn" value="login" />
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <?php require_once 'connect.php'; ?>
        <?php
            if($_SERVER['REQUEST_METHOD'] == "POST" and isset($_POST['login_btn']))
            {
                $user = GetUser();
                $password = GetPassword();

                //test if login info is correct 
                $sql = "SELECT count(*) FROM login WHERE user = ? And password = ?";
                $stmt = mysqli_prepare($link,$sql);
                $stmt->bind_param("si", $user, $password);
                $stmt->execute();
                $result = $stmt->get_result();
                $data = $result->fetch_assoc();

                if($data['count(*)'] == 0)
                {
                    echo "<p class=\"aligncenter\" style=\"color:red\">wrong username or password<p>";
                }
                else
                {
                    session_start();
                    $_SESSION['auth'] = 'true';
                    header('location:admin.php');
                }
            }
            function GetUser()
            {
                if(isset($_POST['login_btn']))
                {
                    $user = $_POST['username']; 
                    return $user;         
                }
                return 0;
            }
            function GetPassword()
            {
                if(isset($_POST['login_btn']))
                {
                    $password = $_POST['password']; 
                    return $password;               
                }
                return 0;
            }
        ?>
    </body>
</html>