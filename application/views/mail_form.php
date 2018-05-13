<!DOCTYPE html>
<html>
    <?php
    if (isset($header)) {
        echo $header;
    };
    ?>

    <body>
        <?php
        if (isset($menu)) {
            echo $menu;
        };
        ?>
        <div class="container">
        <div class="main">
            <div class="container">
                <div class="row">
                    <!--<div class="col-md-2"></div>-->
                    <div class="col-md-12">
                        <h2>Send Email</h2>
                        <form action="<?php echo base_url() ?>Send_email/mail_send" method="post" id="personID">
<!--onsubmit="return ValidateForm();"-->
                            <div class="form-group">
                                <label for="email">Sender Email:</label>
                                <input type="email" class="form-control"  id="email" placeholder="Enter Sender Email" name="sender_email">      
                                <span class="error_msg" style="color:red;"></span><br>

                                <input type="hidden"  name="user_id" value="<?php   echo $this->session->userdata('user_id'); ?>">
                                <input type="hidden"  name="username" value="<?php  echo $this->session->userdata('username'); ?>">
                            </div>

                            <div class="form-group">
                                <label for="email">Receiver Email:</label>
                                <input type="email" class="form-control" id="email" placeholder="Enter Receiver Email" name="receiver_email">
                                <span class="error_msg" style="color:red;"></span><br>
                            </div>

                            <div class="form-group">
                                <label for="email">Subject:</label>
                                <input type="text" class="form-control" id="email" placeholder="Enter Subject" name="subject">
                                <span class="error_msg" style="color:red;"></span><br>
                            </div>

                            <div class="form-group">
                                <label for="email">Body:</label>
                                <input type="text" class="form-control" id="email" placeholder="Enter Body" name="body">
                                <span class="error_msg" style="color:red;"></span><br>
                                <!--<input type="hidden" class="form-control" id="email" placeholder="Auth Key" name="auth_key">-->
                            </div>

                            <button type="submit" class="btn btn-success"><i class="fa fa-check"></i> Submit</button>
                        </form>
                    </div>
                    <!--<div class="col-md-2"></div>-->
                </div>

            </div>
        </div>
        </div>
        <?php
        if (isset($footer)) {
            echo $footer;
        };
        ?>
    </body>

    <script>
        function ValidateForm()
        {
            $('span.error_msg').html('');
            var success = true;
            $("#personID input").each(function ()
            {
                if ($(this).val() == "")
                {
                    $(this).next().html("Field needs filling");
                    success = false;
                }
            });
            return success;
        }
    </script>
</html>
