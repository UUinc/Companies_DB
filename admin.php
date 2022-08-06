<!Doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" href="style.css" />
        <title>Companies DB - Admin</title>
    </head>
    <body>
        <?php require_once 'connect.php'; ?>
        <?php 
            session_start();
            if(!$_SESSION['auth'])
            {
                header('location:login.php');
            }
        ?>
        <div class="container">
            <div>
                <h1>Admin</h1>
                <form action="#" method="post">
                    <table class="email_form">
                        <tr>
                            <td>company name:</td>
                            <td><input id="company_name" type="text" name="company_name" placeholder="uu soft"/></td>
                        </tr>
                        <tr>
                            <td>industry:</td>
                            <td>
                                <select id="industry" name="industry">
                                    <?php
                                        //get the name of the industries
                                        $sql = "SELECT * FROM industry ORDER by industry_name";
                                        $result = mysqli_query($link, $sql) or die(mysqli_error($link));

                                        while($row = mysqli_fetch_array($result))
                                        {
                                            echo "<option value=\"".$row['industry_id']."\">".$row['industry_name']."</option>";
                                        }
                                    ?>
                                </select> 
                            </td>
                        </tr>
                        <tr>
                            <td>city:</td>
                            <td>
                                <select id="city" name="city">
                                    <?php
                                        //get the name of the cities
                                        $sql = "SELECT * FROM city ORDER by city_name";
                                        $result = mysqli_query($link, $sql) or die(mysqli_error($link));
                                        
                                        while($row = mysqli_fetch_array($result))
                                        {
                                            echo "<option value=\"".$row['city_id']."\">".$row['city_name']."</option>";
                                        }
                                    ?>
                                </select> 
                            </td>
                        </tr>
                        <tr>
                            <td>email:</td>
                            <td><input id="email" type="email" name="email" placeholder="abc@example.com"/></td>
                        </tr>
                        <tr>
                            <td>address:</td>
                            <td><input id="address" type="text" name="address" placeholder="117, bd. Hassan II"/></td>
                        </tr>
                        <tr>
                            <td>telephone:</td>
                            <td><input id="telephone" type="tel" name="telephone" placeholder="0666666666" pattern="[0-9]{4}[0-9]{3}[0-9]{3}"/></td>
                        </tr>
                        <tr>
                            <td>website:</td>
                            <td><input id="website" type="url" name="website" placeholder="https://uusoft.itch.io/"/></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input class="button" type="submit" name="save_btn" value="save"/></td>
                            <td><a class="button" href="logout.php">logout</a></td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
        <?php
            if($_SERVER['REQUEST_METHOD'] == "POST" and isset($_POST['save_btn']))
            {
                $comapy_name = GetComapyName();
                $email = GetEmail();
                $address = GetAddress();
                $telephone = GetTelephone();
                $website = GetWebsite();
                $industry_id = GetIndustryId();
                $city_id = GetCityId();

                //test if company name already exist
                $sql = "SELECT count(*) FROM companies WHERE company_name = ?";
                $stmt = mysqli_prepare($link,$sql);
                $stmt->bind_param("s", $comapy_name);
                $stmt->execute();
                $result = $stmt->get_result();
                $data = $result->fetch_assoc();

                if($data['count(*)'] == 0)
                {
                    //save this company into the database
                    $sql = "INSERT INTO companies (company_id, company_name, email, address, telephone, website, industry_id, city_id) VALUES (NULL, ?, ?, ?, ?, ?, ?, ?)";
                    $stmt = mysqli_prepare($link,$sql);
                    $stmt->bind_param("sssssss", $comapy_name, $email, $address, $telephone, $website, $industry_id, $city_id);
                    $state = $stmt->execute();

                    if($state)
                    {
                        echo "<p class=\"aligncenter\" style=\"color:green\">company info are saved in database<p>";
                    }
                    else
                    {
                        echo "<p class=\"aligncenter\" style=\"color:red\">company info are not saved in database<p>";
                    }
                }
                else
                {
                    //save this company into the database
                    $sql = "UPDATE companies SET email = ?, address = ?, telephone = ?, website = ?, industry_id = ?, city_id = ? WHERE company_name = ?";
                    $stmt = mysqli_prepare($link,$sql);
                    $stmt->bind_param("sssssss", $email, $address, $telephone, $website, $industry_id, $city_id, $comapy_name);
                    $state = $stmt->execute();

                    if($state)
                    {
                        echo "<p class=\"aligncenter\" style=\"color:green\">company infos are updated<p>";
                    }
                    else
                    {
                        echo "<p class=\"aligncenter\" style=\"color:red\">company infos are not updated<p>";
                    }

                }
            }
            function GetComapyName()
            {
                if(isset($_POST['save_btn']))
                {
                    $data = $_POST['company_name']; 
                    if(IsNullOrEmptyString($data)) return null;
                    return $data;         
                }
                return null;
            }
            function GetEmail()
            {
                if(isset($_POST['save_btn']))
                {
                    $data = $_POST['email']; 
                    if(IsNullOrEmptyString($data)) return null;
                    return $data;               
                }
                return null;
            }
            function GetAddress()
            {
                if(isset($_POST['save_btn']))
                {
                    $data = $_POST['address']; 
                    if(IsNullOrEmptyString($data)) return null;
                    return $data;         
                }
                return null;
            }
            function GetTelephone()
            {
                if(isset($_POST['save_btn']))
                {
                    $data = $_POST['telephone']; 
                    if(IsNullOrEmptyString($data)) return null;
                    return $data;               
                }
                return null;
            }
            function GetWebsite()
            {
                if(isset($_POST['save_btn']))
                {
                    $data = $_POST['website']; 
                    if(IsNullOrEmptyString($data)) return null;
                    return $data;         
                }
                return null;
            }
            function GetIndustryId()
            {
                if(isset($_POST['save_btn']))
                {
                    $data = $_POST['industry']; 
                    return $data;               
                }
                return null;
            }
            function GetCityId()
            {
                if(isset($_POST['save_btn']))
                {
                    $data = $_POST['city']; 
                    return $data;               
                }
                return null;
            }
            // Function for basic field validation (present and neither empty nor only white space
            function IsNullOrEmptyString($str)
            {
                return (!isset($str) || trim($str) === '');
            }
        ?>
    </body>
</html>