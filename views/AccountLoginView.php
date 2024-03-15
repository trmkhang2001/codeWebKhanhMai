<?php
  //load LayoutTrangTrong.php
  $this->layoutPath = "LayoutTrangTrong.php";
 ?>
<div class="template-customer">
          <h1>Đăng nhập tài khoản</h1>
          <?php if(isset($_GET["notify"])&&$_GET["notify"]=="success"): ?>
            <p style="color:red;">Đăng ký thành công</p>
          <?php else: ?>
          <?php endif; ?>
          <div class="row" style="margin-top:50px;">
            <div class="col-md-6">
              <div class="wrapper-form">
                <form method='post' action="index.php?controller=account&action=loginPost">
                  <input name="__RequestVerificationToken" type="hidden" value="CfDJ8NCDIeDSHgNIh7wY7X1HBtTC5UoDhnpPY_bZxEAeHg3_XzL3KFfHY1L7RC4b6K5PPzwy7cBnVlo7o43qXnf1fjxMAvl49i2tyH2k-qFbQOFYRs5LeSDFHBI6XXee3ODmKapQeEAQcEVH5_7dlOO309Y" />
                  <p class="title"><span>Đăng nhập tài khoản</span></p>
                  <div class="form-group">
                    <label>Email:<b id="req">*</b></label>
                    <input type="email" class="input-control" name="email" value="user@gmail.com" required="">
                  </div>
                  <div class="form-group">
                    <label>Mật khẩu:<b id="req">*</b></label>
                    <input type="password" class="input-control" name="password" value="123456789" required="">
                  </div>
                  <input type="submit" class="button" value="Đăng nhập">
                </form>
              </div>
            </div>
            <div class="col-md-6">
              <div class="wrapper-form">
                <p class="title"><span>Tạo tài khoản mới</span></p>
                <p>Đăng ký tài khoản để mua hàng nhanh hơn. Theo dõi đơn đặt hàng, vận chuyển. Cập nhật các sự kiện và chương trình giảm giá của chúng tôi.</p>
                <a href="index.php?controller=account&action=register" class="button">Đăng ký</a> </div>
            </div>
          </div>
        </div>
