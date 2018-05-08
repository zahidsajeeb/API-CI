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
                            <h3 style="text-align:center; font-weight:bold;"> Token Dashboard </h3>
                            <?php
                            error_reporting(0);
                            if (count($result) > 0) {
                                ?>
                                <button class="btn btn-success disabled"> <i class="fa fa-plus"></i> Create Token </button> <br> <br>
                                <?php
                            } else {
                                ?>
                                <a href="<?php echo base_url(); ?>Token/create" class="btn btn-success"><i class="fa fa-plus"></i> Create Token</a>  </br>  <br>
                            <?php } ?> 
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th>Sl No</th>
                                        <th>Token</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>01</td>
                                        <td> <?php echo $result->token; ?> </td>
                                        <td>
                                            <a href="<?php echo base_url(); ?>Token/edit/<?php echo $result->token_id; ?>" class="btn btn-info">   <i class="fa fa-edit">    </i> Edit   </a>
                                            <a href="<?php echo base_url(); ?>Token/delete/<?php echo $result->token_id; ?>" onclick="return confirm('Are you sure you want to delete this item?');" class="btn btn-danger"> <i class="fa fa-trash-o"> </i> Delete </a>
                                        </td>
                                    </tr>

                                </tbody>
                            </table>

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
</html>