<!Doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" href="style.css" />
        <title>Companies DB</title>
        <script src="https://smtpjs.com/v3/smtp.js"></script>
        <script type="text/javascript">

            var file;
            var dataUri;

            function sendEmail() 
            {
                var email_success_counter = 0;
                var emails_length = 0;

                var emails = document.getElementsByClassName("company_email");
                
                for(let i=0; i<=emails.length; i++)
                {
                    var email;
                    //this piece of line is to send an email to the sender
                    //to be asure of the email was sent successully
                    if(i == emails.length)
                    {
                        email = document.getElementById("username").value;

                        //don't count your email
                        email_success_counter--;
                        emails_length--;
                    }
                    else
                    {
                        email = emails[i].innerHTML;
                    }

                    if(email != "")
                    {
                        //count how much emails exist
                        emails_length++;

                        //send a regular email without attachment
                        if(file == null)
                        {
                            Email.send({
                            Host : "smtp.elasticemail.com",
                            Username : document.getElementById("username").value,
                            Password : document.getElementById("password").value,
                            To : email,
                            From : document.getElementById("username").value,
                            Subject : document.getElementById("subject").value,
                            Body : document.getElementById("message").value
                            }).then(function (message) {
                                email_success_counter++;
                                showSuccessMessage(email_success_counter, emails_length);
                            });
                        }
                        else //send email with attachment
                        {
                            Email.send({
                            Host : "smtp.elasticemail.com",
                            Username : document.getElementById("username").value,
                            Password : document.getElementById("password").value,
                            To : email,
                            From : document.getElementById("username").value,
                            Subject : document.getElementById("subject").value,
                            Body : document.getElementById("message").value,
                            Attachments : [
                                {
                                    name : file.name,
                                    data : dataUri
                                }]
                            }).then(function (message) {
                                email_success_counter++;
                                showSuccessMessage(email_success_counter, emails_length);
                            });
                        }
                    }
                }
            }
            
            //upload attachment
            function uploadFileToServer()
            {
                file = event.srcElement.files[0];
                var reader = new FileReader();
                reader.readAsBinaryString(file);
                reader.onload = function () {
                    dataUri = "data:" + file.type + ";base64," + btoa(reader.result);
                };
                reader.onerror = function() {
                    console.log('there are some problems');
                };
            }

            //show success message
            function showSuccessMessage(email_success_counter, emails_length)
            {
                hideSuccessMessage();
                
                var para = document.createElement("p");
                para.className = "message-output";
                para.innerHTML = "email has been sent to "+email_success_counter+"/"+emails_length;
                document.getElementById("success_message").appendChild(para);
            }

            function hideSuccessMessage()
            {
                //look if the child already exist
                var element = document.getElementsByClassName("message-output")[0];
                if(element != null)
                {
                    element.remove();
                }
            }
        </script>
    </head>
    <body>
        <?php require_once 'connect.php'; ?>
        <h1><b>Companies Database</b></h1>
        <div class="container">
            <div>
                <form action="#" method="post">
                    <b>Industry:</b>
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
                    <b>City:</b>
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
                    return 1;
                }
                function GetCity()
                {
                    if(isset($_POST['filter_btn']))
                    {
                        $city = $_POST['city']; 
                        return $city;               
                    }
                    return 1;
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
                echo "<table class=\"table_deco\">";
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
                    echo "<td class=\"company_email\">".$row['email']."</td>";
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
                        <h5>To be able to send emails you have to sign in <a href="https://www.smtpjs.com/" target="_blank">smtpJS</a></h5>
                        <h6>For a small tutorial on how to sign in check out this link <a href="tutorial.php">click here</a></h5>

                        <table class="email_form">
                            <tr>
                                <td>Username:</td>
                                <td><input id="username" type="email" name="emailFrom" placeholder="abc@test.com"/></td>
                            </tr>
                            <tr>
                                <td>Password:</td>
                                <td><input id="password" type="password" name="emailTo" placeholder="**********9FC15"/></td>
                            </tr>
                            <tr>
                                <td><hr/></td>
                            </tr>
                            <tr>
                                <td>Subject:</td>
                                <td><input id="subject" type="text" name="subject" placeholder="Contact.." onchange="hideSuccessMessage()"/></td>
                            </tr>
                            <tr>
                                <td>Attachment:</td>
                                <td><input id="myFile" type="file" name="filename" onchange="uploadFileToServer()" onchange="hideSuccessMessage()"></td>
                            </tr>
                        </table>
                     
                        <div id="success_message"></div>
                        <textarea id="message" placeholder="Write your email here..." cols="100" rows="20" oninput="hideSuccessMessage()"></textarea>
                    </div>
                </div>
                <br/>
                <div class="container">
                    <div>
                        <button name="send_btn" onclick="sendEmail()" onclick="hideSuccessMessage()">send</button>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>