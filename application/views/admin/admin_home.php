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
                <h2> Admin Dashboard</h2>
                <p>
                    Your User Id is:  <?php echo $this->session->userdata('user_id') ?>
                </p>
               
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
