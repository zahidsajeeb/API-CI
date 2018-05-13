<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

        <link rel="stylesheet" type="text/css"
              href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.2.2/css/bootstrap-combined.min.css">
        <link rel="stylesheet" type="text/css" media="screen"
              href="http://tarruda.github.com/bootstrap-datetimepicker/assets/css/bootstrap-datetimepicker.min.css">

        <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.3/css/bootstrap-select.min.css"/>
        <!--    <link rel="stylesheet" type="text/css" href="--><?php //echo base_url();  ?><!--select/css/bootstrap-select.min.css">-->

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.js" defer></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

        <script src="<?php echo base_url(); ?>select/js/bootstrap-select.js" type="text/javascript"></script>

        <style>
            body {
                margin: 0;
            }

            .bootstrap-select:not([class*=col-]):not([class*=form-control]):not(.input-group-btn) {
                width: 51%;
                margin-left:25%;
            }

            .navbar {
                overflow: hidden;
                background-color: #333;
                position: fixed;
                top: 0;
                width: 100%;
                border-radius: 0;
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
                            <form class="form-control well" action="<?php echo base_url(); ?>Report/admin_generate_report" method="POST">

                                <div class="form-group">
                                    <label style="font-weight:bold;margin-left:25%;" class="control-label" for="email"> Starting Date Time:</label>
                                    <div class="col-sm-12">
                                        <div id="datetimepicker" class="input-append date">
                                            <input style="width:50%;margin-left:25%;" type="text"  class="form-control" name="date1" placeholder="Enter Start Date Time">
                                            <span class="add-on">
                                                <i data-time-icon="icon-time" data-date-icon="icon-calendar"></i>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <br>

                                <div class="form-group">
                                    <label style="font-weight:bold;margin-left:25%;" class="control-label" for="email"> Ending Date Time:</label>
                                    <div class="col-sm-12">
                                        <div id="datetimepicker1" class="input-append date">
                                            <input style="width:50%;margin-left:25%;" type="text"  class="form-control" name="date2" placeholder="Enter End Date Time">
                                            <span class="add-on">
                                                <i data-time-icon="icon-time" data-date-icon="icon-calendar"></i>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <br>

                                <div class="form-group">
                                    <label style="font-weight:bold;margin-left:25%;" class="control-label" for="pwd">Sender/Receiver Email:</label>
                                    <div class="col-sm-12">
                                        <input style="width:50%;margin-left:25%;" type="email" class="form-control" id="pwd" placeholder="Sender/Receiver Email" name="email">
                                    </div>
                                </div>
                                <br>

                                <div class="form-group">
                                    <label style="font-weight:bold;margin-left:25%;" class="control-label" for="email">User Name:</label>
                                    <div class="col-sm-12">
                                        <select class="selectpicker" data-show-subtext="true" data-live-search="true" name="user_id">
                                            <option data-subtext="" value="">---SELECT NAME---</option>
                                            <?php foreach ($result as $row): ?>
                                                <option value="<?php echo $row->user_id; ?>"> <?php echo $row->username; ?> </option>
                                            <?php endforeach; ?>
                                        </select>
                                    </div>
                                </div>
                                <br>

                                <div class="form-group">
                                    <div class="col-md-12">
                                        <button style="margin-left:25%;" type="submit" class="btn btn-success"><i class="fa fa-search-plus"></i> Search</button>
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
        if (isset($footer)) {
            echo $footer;
        };
        ?>

        <script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.3/js/bootstrap-select.min.js"></script>

        <script type="text/javascript"
        src="http://tarruda.github.com/bootstrap-datetimepicker/assets/js/bootstrap-datetimepicker.min.js"></script>
        <script type="text/javascript"
        src="http://tarruda.github.com/bootstrap-datetimepicker/assets/js/bootstrap-datetimepicker.pt-BR.js"></script>
        <script type="text/javascript">
            $('#datetimepicker').datetimepicker({
                //      format: 'dd/MM/yyyy hh:mm:ss',
                format: 'yyyy-MM-dd hh:mm:ss',
                language: 'en'
            });
            $('#datetimepicker1').datetimepicker({
                //      format: 'dd/MM/yyyy hh:mm:ss',
                format: 'yyyy-MM-dd hh:mm:ss',
                language: 'en'
            });
        </script>

        <script>
            document.addEventListener('DOMContentLoaded', function () {
                var mySelect = $('#first-disabled2');

                $('#special').on('click', function () {
                    mySelect.find('option:selected').prop('disabled', true);
                    mySelect.selectpicker('refresh');
                });

                $('#special2').on('click', function () {
                    mySelect.find('option:disabled').prop('disabled', false);
                    mySelect.selectpicker('refresh');
                });

                $('#basic2').selectpicker({
                    liveSearch: true,
                    maxOptions: 1
                });
            });
        </script>
    </body>
</html>
