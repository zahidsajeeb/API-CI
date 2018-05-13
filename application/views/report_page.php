<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

        <link rel="stylesheet" type="text/css" href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.2.2/css/bootstrap-combined.min.css">
        <link rel="stylesheet" type="text/css" media="screen" href="http://tarruda.github.com/bootstrap-datetimepicker/assets/css/bootstrap-datetimepicker.min.css">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

        <style>
            body {margin:0;}

            .navbar {
                overflow: hidden;
                background-color: #333;
                position: fixed;
                top: 0;
                width: 100%;
                border-radius:0px;
            }

            .navbar a {
                float: left;
                display: block;
                color: #f2f2f2;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
                font-size: 17px;
            }

            .navbar a:hover {
                background: #ddd;
                color: black;
            }

            .main {
                padding: 16px;
                margin-top: 30px;
                height: 100%; /* Used in this example to enable scrolling */
            }

            .footer {
                position: fixed;
                left: 0;
                bottom: 0;
                width: 100%;
                background-color: #333;
                color: white;
                text-align: center;
            }
        </style>
        <base href="<?php echo base_url(); ?>">
    </head>

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
                            <h3 style="text-align:center; font-weight:bold;">Report Page</h3>
                            <form class="form-control well" action="<?php echo base_url(); ?>Report/generate_report" method="POST">
                                <div class="form-group">
                                    <label  style="font-weight:bold; margin-left:25%;" class="control-label" for="email">Starting Date Time: &nbsp;&nbsp;</label> 
                                    <div class="col-sm-12">
                                        <div id="datetimepicker" class="input-append date">
                                            <input style="width:50%; margin-left:25%;" type="text" class="form-control" name="date1" placeholder="Starting Date Time"></input>
                                            <span class="add-on">
                                                <i data-time-icon="icon-time" data-date-icon="icon-calendar"></i>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <br>

                                <div class="form-group">
                                    <label  style="font-weight:bold;margin-left:25%;" class="control-label" for="email">Ending Date Time: &nbsp;&nbsp;</label> 
                                    <div class="col-sm-12">
                                        <div id="datetimepicker1" class="input-append date">
                                            <input style="width:50%;margin-left:25%;" type="text" class="form-control" name="date2" placeholder="Ending Date Time"></input>
                                            <span class="add-on">
                                                <i data-time-icon="icon-time" data-date-icon="icon-calendar"></i>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <br>

                                <div class="form-group">
                                    <label style="font-weight:bold;margin-left:25%;" class="control-label" for="pwd">Sender/Receiver Email: &nbsp;&nbsp;</label>
                                    <div class="col-sm-12">          
                                        <input style="width:50%;margin-left:25%;" type="email" class="form-control" id="pwd" placeholder="Sender/Receiver Email" name="email">
                                        <input type="hidden" name="user_id" value="<?php echo $this->session->userdata('user_id') ?>"> 
                                    </div>
                                </div>
                                <br>

                                <div class="form-group">
                                    <div class="col-md-12"> 
                                        <button type="submit" style="margin-left:25%;" class="btn btn-success"><i class="fa fa-search-plus"></i> Search</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <!--<div class="col-md-2"></div>-->
                    </div>
                </div>
            </div>
        </div>

        <?php
        if (isset($footer)){
            echo $footer;
        };
        ?>

        <script type="text/javascript" src="http://tarruda.github.com/bootstrap-datetimepicker/assets/js/bootstrap-datetimepicker.min.js"></script>
        <script type="text/javascript" src="http://tarruda.github.com/bootstrap-datetimepicker/assets/js/bootstrap-datetimepicker.pt-BR.js"></script>
        <script type="text/javascript">
            $('#datetimepicker').datetimepicker({
//               format: 'dd/MM/yyyy hh:mm:ss',
                format: 'yyyy-MM-dd hh:mm:ss',
                language: 'en'
            });

            $('#datetimepicker1').datetimepicker({
//              format: 'dd/MM/yyyy hh:mm:ss',
                format: 'yyyy-MM-dd hh:mm:ss',
                language: 'en'
            });
        </script>
    </body>
</html>
