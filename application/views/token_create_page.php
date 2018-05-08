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

        <div class="main">
            <div class="container">
                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-8">
                        <h2>Create Token</h2>
                        <form action="<?php echo base_url(); ?>Token/store" method="POST">
                            <div class="form-group">
                                <label for="email">Token:</label>
                                <input type="text" class="form-control" id="email" value="<?php echo md5(uniqid(rand(), true)) ?>" name="token" readonly="">
                                <input type="hidden" name="user_id" value="<?php echo $this->session->userdata('user_id'); ?>">
                            </div>
                            <button type="submit" class="btn btn-primary"><i class="fa fa-check"></i> Submit</button>
                        </form>
                    </div>
                    <div class="col-md-2"></div>
                </div>
            </div>
        </div>

        <?php
        if (isset($footer)) {
            echo $footer;
        };
        ?>
    </body>
</html>
