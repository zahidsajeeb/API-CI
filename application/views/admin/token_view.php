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

                    <div class="col-md-12 well">
                        <h4 style="text-align:center; font-weight:bold;"> Token View</h4>
                        <table class="table table-bordered" id="myTable">
                            <thead>
                                <tr>
                                    <th>SL NO</th>
                                    <th>Token ID</th>
                                    <th>Token</th>
                                    <th>User ID</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $i = 1; ?>
                                <?php foreach ($result as $row): ?>
                                    <tr>
                                        <td><?php echo $i++ ?></td>
                                        <td><?php echo $row->token_id; ?></td>
                                        <td><?php echo $row->token; ?></td>
                                        <td><?php echo $row->user_id; ?></td>
                                    </tr>
                                <?php endforeach; ?>
                            </tbody>
                        </table>
                    </div>
                    <!--<div class="col-md-2"></div>-->
                </div>

            </div>
        </div>

        <?php
        if (isset($footer)) {
            echo $footer;
        };
        ?>

        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $('#myTable').DataTable();
            });
        </script>

    </body>
</html>
