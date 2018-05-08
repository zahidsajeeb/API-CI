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
                        <h4 style="font-weight:bold; text-align:center;">Report View</h4>
                        <table class="table table-bordered" id="myTable">
                            <thead>
                                <tr>
                                    <th>SL NO</th>
                                    <th>Sender Email</th>
                                    <th>Receiver Email</th>
                                    <th>Subject</th>
                                    <th>Body</th>
                                    <th>DateTime</th>
                                    <th>UserID</th>
                                </tr>
                            </thead>
                            <?php if ($result == TRUE) { ?>
                                <tbody>
                                    <?php $i = 1; ?>
                                    <?php foreach ($result as $row): ?>
                                        <tr>
                                            <td><?php echo $i++ ?></td>
                                            <td><?php echo $row->sender_email; ?></td>
                                            <td><?php echo $row->receiver_email; ?></td>
                                            <td><?php echo $row->subject; ?></td>
                                            <td><?php echo $row->body; ?></td>
                                            <td><?php echo $row->datetime; ?></td>
                                            <td><?php echo $row->user_id; ?></td>
                                        </tr>
                                    <?php endforeach; ?>
                                </tbody>
                            <?php
                            }
                            else if ($result == FALSE) {
                                ?>
                                <tbody>
                                    <tr> <h5 style="color:red; font-weight:bold;"> Record Not Found </h5></tr>
                                </tbody>
                                <?php }
                            ?>
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

