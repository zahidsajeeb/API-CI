<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style>
            body {font-family: Arial, Helvetica, sans-serif;}
            form {border: 3px solid #f1f1f1;}

            input[type=text], input[type=password] {
                width: 100%;
                padding: 12px 20px;
                margin: 8px 0;
                display: inline-block;
                border: 1px solid #ccc;
                box-sizing: border-box;
            }

            button {
                background-color: #4CAF50;
                color: white;
                padding: 14px 20px;
                margin: 8px 0;
                border: none;
                cursor: pointer;
                width: 100%;
            }

            button:hover {
                opacity: 0.8;
            }

            .cancelbtn {
                width: auto;
                padding: 10px 18px;
                background-color: #f44336;
            }

            .imgcontainer {
                text-align: center;
                margin: 24px 0 12px 0;
            }

            img.avatar {
                width: 10%;
                border-radius: 50%;
            }

            .container {
                padding: 16px;
            }

            span.psw {
                float: right;
                padding-top: 16px;
            }

            /* Change styles for span and cancel button on extra small screens */
            @media screen and (max-width: 100px) {
                span.psw {
                    display: block;
                    float: none;
                }
                .cancelbtn {
                    width: 100%;
                }
            }
        </style>
    </head>
    <body style="margin-left:20%; margin-right:20%; ">

        <h2 style="text-align:center;">API SERVER</h2>

        <div class="container">
            <div class="row">
                <div class="col-md-2"> </div>
                <div class="col-md-8"> 
                    <p style="color:red">
                        <?php
                        $message1 = $this->session->userdata('message');
                        if (isset($message1)) {
                            echo $message1;
                            $this->session->unset_userdata('message');
                        }
                        ?>
                    </p>
                    <form action="<?php echo base_url() ?>Login/check_user_login" method="POST">
                        <div class="imgcontainer">
                            <img src="<?php echo base_url(); ?>img/img_avatar2.png" alt="Avatar" class="avatar">
                        </div>

                        <div class="container">
                            <label for="uname"><b>Username</b></label>
                            <input type="text" placeholder="Enter Username" name="username" required="" autocomplete="off">

                            <label for="psw"><b>Password</b></label>
                            <input type="password" placeholder="Enter Password" name="password" required="" autocomplete="off">

                            <button type="submit">Login</button>
                            <!--                            <label>
                                                            <input type="checkbox" checked="checked" name="remember"> Remember me
                                                        </label>-->
                        </div>

                        <!--                        <div class="container" style="background-color:#f1f1f1">
                                                    <button type="button" class="cancelbtn">Cancel</button>
                                                    <span class="psw">Forgot <a href="#">password?</a></span>
                                                </div>-->
                    </form>



                </div>
                <div class="col-md-2"> </div>
            </div>
        </div>



    </body>
</html>
