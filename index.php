<!Doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" href="style.css" />
        <title>Companies DB</title>
    </head>
    <body>
        <?php require_once 'connect.php'; ?>
        <h1><b>Companies Database</b></h1>
        <div class="container">
            <div>
                <form action="#" method="post">
                    <select id="industry" name="industry">
                        <option value="1">All</option>
                        <?php
                            //get the name of the industries
                            $sql = "SELECT * FROM industry";
                            $result = mysqli_query($link, $sql) or die(mysqli_error($link));

                            $index = 1;
                            while($row = mysqli_fetch_array($result))
                            {
                                $index++;
                                echo "<option value=\"".$index."\">".$row['industry_name']."</option>";
                            }
                        ?>
                    </select> 
                    <select id="city" name="city">
                        <option value="1">All</option>
                        <?php
                            //get the name of the cities
                            $sql = "SELECT * FROM city";
                            $result = mysqli_query($link, $sql) or die(mysqli_error($link));
                            
                            $index = 1;
                            while($row = mysqli_fetch_array($result))
                            {
                                $index++;
                                echo "<option value=\"".$index."\">".$row['city_name']."</option>";
                            }
                            ?>
                    </select> 

                    <input type="submit" name="filter_btn" value="filter" />
                </form>
            </div>
        </div>
        <br/>
        <div class="container">
            <div>
                <?php
                if($_SERVER['REQUEST_METHOD'] == "POST" and isset($_POST['filter_btn']))
                {
                    GetIndustry();
                    GetCity();
                }
                function GetIndustry()
                {
                    if(isset($_POST['filter_btn']))
                    {
                        $industry = $_POST['industry']; 
                        return $industry;         
                    }
                    
                }
                function GetCity()
                {
                    if(isset($_POST['filter_btn']))
                    {
                        $city = $_POST['city']; 
                        return $city;               
                    }
                }

                $industry = GetIndustry() - 1;
                $city = GetCity() - 1;

                //preserve set selected option
                echo "<script>
                        document.getElementById(\"industry\").value = ".($industry+1).";
                        document.getElementById(\"city\").value = ".($city+1).";
                      </script>";
                
                if($industry == 0 and $city == 0)
                {
                    $sql = "SELECT * FROM companies";
                }
                elseif($industry == 0)
                {
                    $sql = "SELECT * FROM companies WHERE city_id = ".$city;
                }
                elseif($city == 0)
                {
                    $sql = "SELECT * FROM companies WHERE industry_id = ".$industry;
                }
                else
                {
                    $sql = "SELECT * FROM companies WHERE industry_id = ".$industry." and city_id = ".$city;
                }

                $result = mysqli_query($link, $sql) or die(mysqli_error($link));
                echo "<table>";
                //header of the table
                echo "<tr>
                        <th>Company Name</th>
                        <th>Industry</th>
                        <th>City</th>
                        <th>Email</th>
                        <th>Adress</th>
                        <th>Telephone</th>
                        <th>Website</th>
                      </tr>";
                
                while($row = mysqli_fetch_array($result))
                {
                    //get the name of the industry
                    $sql = "SELECT * FROM industry WHERE industry_id = ".$row['industry_id'];
                    $industry = mysqli_query($link, $sql) or die(mysqli_error($link));
                    $industry = mysqli_fetch_assoc($industry);

                    //get the name of the city
                    $sql = "SELECT * FROM city WHERE city_id = ".$row['city_id'];
                    $city = mysqli_query($link, $sql) or die(mysqli_error($link));
                    $city = mysqli_fetch_assoc($city);

                    echo "<tr>";
                    echo "<td>".$row['company_name']."</td>";
                    echo "<td>".$industry['industry_name']."</td>";
                    echo "<td>".$city['city_name']."</td>";
                    echo "<td>".$row['email']."</td>";
                    echo "<td>".$row['adress']."</td>";
                    echo "<td>".$row['telephone']."</td>";
                    echo "<td>".$row['website']."</td>";
                    echo "</tr>";
                }
                echo "</table>";
                ?>
                
                <br/>
                <hr/>
                <br/>

                <div class="container">
                    <div>
                        <h2>Send Email</h2>
                        <textarea id="message" placeholder="message here..." cols="100" rows="20"></textarea>
                    </div>
                </div>
                <br/>
                <div class="container">
                    <div>
                        <button name="send_btn" onclick="SendEmail()">send</button>
                    </div>
                </div>
            </div>
        </div>
        <script>
            var textarea = document.getElementById("message");
            function SendEmail()
            {
                alert(textarea.value);
            }
        </script>
    </body>
</html>