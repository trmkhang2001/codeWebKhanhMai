<!-- load file layout chung -->
<?php $this->layoutPath = "Layout.php"; ?>
<div class="col-md-12">
    <div style="margin-bottom:5px;">
        <input onclick="history.go(-1);" type="button" value="Back" class="btn btn-danger">
    </div>
    <div class="panel panel-primary">
        <div class="panel-heading">Orders detail</div>
        <div class="panel-body">
            <!-- thong tin don hang -->
            <?php
                $order = $this->modelGetOrders($id);
                $customer = $this->modelGetCustomers($order->customer_id);
             ?>
            <table class="table">
                <tr>
                    <th style="width: 100px;">Customer</th>
                    <td><?php echo $customer->name; ?></td>
                </tr>
                <tr>
                    <th style="width: 100px;">Address</th>
                    <td><?php echo $customer->address; ?></td>
                </tr>
                <tr>
                    <th style="width: 100px;">Phone</th>
                    <td><?php echo $customer->phone; ?></td>
                </tr>
                <tr>
                    <th style="width: 100px;">Order date</th>
                    <td><?php echo $order->create_at; ?></td>
                </tr>
                <tr>
                    <th style="width: 100px;">Status</th>
                    <td>
                        <?php if($order->status == 0): ?>
                            <span class="btn btn-danger">News</span>
                        <?php else: ?>
                            <span class="btn btn-primary">Finished</span>
                        <?php endif; ?>
                    </td>
                </tr>
            </table>
            <!-- /thong tin -->
            <table class="table table-bordered table-hover">
                <tr>
                    <th style="width: 100px;">Photo</th>
                    <th>Name</th>
                    <th>Price</th>
                    <th>Number</th>
                </tr>
                <?php foreach($data as $rows): ?>
                    <?php
                        //lay ban ghi product tuong ung voi product_id
                        $product = $this->modelGetProducts($rows->product_id);
                     ?>
                <tr>
                    <td style="text-align: center;"><img src="../Assets/Upload/Products/<?php echo $product->photo; ?>" style="width:100px;"></td>
                    <td><?php echo $product->name; ?></td>
                    <td style="text-align: center;"><?php echo number_format($rows->price); ?></td>
                    <td style="text-align: center;"><?php echo $rows->number; ?></td>
                </tr>
                <?php endforeach; ?>
            </table>
        </div>
    </div>
</div>
