<!-- load file layout chung -->
<?php $this->layoutPath = "Layout.php"; ?>
<div class="col-md-12">
<!-- <div style="display:flex;height: 30px;justify-content: space-between;align-items: center;margin-bottom: 30px;"> -->
        <div></div>
        <h2 style="text-align: center">Order</h2>
        <!-- <button type="button" class="btn btn-success"><a href="index.php?controller=orders&action=export" style="color:white">Xuất excel</a></button> -->
<!-- </div> -->
    <div class="panel panel-primary">
        <div class="panel-body">
            <table class="table table-bordered table-hover" style="text-align: center;">
                <tr>
                    <th style="width:120px;text-align: center;">Customer</th>
                    <th style="width:120px; text-align: center;">Phone</th>
                    <th style="width:120px; text-align: center;">Address</th>
                    <th style="width:120px;text-align: center;">Order date</th>
                    <th style="width:150px; text-align: center;">Status</th>
                    <th style="width:150px;"></th>
                </tr>
                <?php foreach($listRecord as $rows): ?>
                <?php
                    //lay ban ghi customer
                    $customer = $this->modelGetCustomers($rows->customer_id);
                 ?>
                 <tr>
                     <td><?php echo $customer->name; ?></td>
                     <td><?php echo $customer->phone; ?></td>
                     <td><?php echo $customer->address; ?></td>
                     <td>
                        <?php
                        $date = Date_create($rows->create_at);
                        echo Date_format($date, "d/m/Y");
                        ?>
                        </td>
                     <td style="text-align: center;">
                         <?php if($rows->status == 1): ?>
                            <span class="btn btn-primary">Finished</span>
                         <?php else: ?>
                            <span class="btn btn-danger">New</span>
                         <?php endif; ?>
                     </td>
                     <td style="text-align: center;display: flex;justify-content:space-around">
                        <a href="index.php?controller=orders&action=detail&id=<?php echo $rows->id; ?>" class="btn btn-success">Detail</a>
                        <?php if($rows->status == 0): ?>
                            <a href="index.php?controller=orders&action=delivery&id=<?php echo $rows->id; ?>" class="btn btn-info">Finished</a>
                         <?php endif; ?>
                     </td>
                 </tr>
                <?php endforeach; ?>
            </table>
            <style type="text/css">
                .pagination{padding:0px; margin:0px;}
            </style>
            <ul class="pagination">
                <li class="page-item">
                    <?php for($i = 1; $i <= $numPage; $i++): ?>
                    <a href="index.php?controller=users&action=read&p=<?php echo $i; ?>" class="page-link"><?php echo $i; ?></a>
                    <?php endfor; ?>
                </li>
            </ul>
        </div>
    </div>
</div>
