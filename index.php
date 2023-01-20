<!-- index.php -->
<?php include 'template/header.php'; ?>
  <body>
    
    <?php include 'template/nav-bar.php'; ?>
    <!-- END nav -->
    
    <section class="home-slider owl-carousel">
      <div class="slider-item" style="background-image: url('images/view1.jpeg');">
        <div class="overlay"></div>
        <div class="container">
          <div class="row slider-text align-items-center justify-content-center text-center">
            <div class="col-md-10 col-sm-12 ftco-animate">
              <h1 class="mb-3">Selamat Datang Di Cafe Sentani Garden</h1>
            </div>
          </div>
        </div>
      </div>

      <div class="slider-item" style="background-image: url('images/view2.jpeg');">
        <div class="overlay"></div>
        <div class="container">
          <div class="row slider-text align-items-center justify-content-center text-center">
            <div class="col-md-10 col-sm-12 ftco-animate">
              <h1 class="mb-3">Tempat Nyaman &amp; Bersih</h1> 
            </div>
          </div>
        </div>
      </div>

      <div class="slider-item" style="background-image: url('images/view3.jpeg');">
        <div class="overlay"></div>
        <div class="container">
          <div class="row slider-text align-items-center justify-content-center text-center">
            <div class="col-md-10 col-sm-12 ftco-animate">
              <h1 class="mb-3">Kami Tunggu Kedatangan Anda</h1> 
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- END slider -->

    <div class="ftco-section-reservation">
      <div class="container">
        <div class="row">
          <div class="col-md-12 reservation pt-5 px-5">    
              <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                <div class="row">
                  <?php  
                   include 'dbCon.php';
                    $con = connect();
                    $sql = "SELECT * FROM `user` WHERE role = 1";
                    $result = $con->query($sql);
                    foreach ($result as $r) {
                  ?>
                  <div class="col-lg-12">
                    <div class="menus d-flex ftco-animate">
                      <div class="menu-img" style="background-image: url(dashboard/user-image/<?php echo $r['logo']; ?>)"></div>
                      <div class="text d-flex">
                        <div class="row one-half">
                        	<div class="col-lg-12">
                          	<h3><?php echo $r['nama']; ?></h3>
                      		</div>
                          <div class="col-lg-12">
                            <p class="text-white"><?php echo $r['address']; ?></p>
                          </div>
                        </div>
                        <div class="one-third">
                        	<a href="reservation.php?res_id=<?php echo $r['id']; ?>" class="btn btn-info" style="width: 100%;margin-left: 23px;margin-top: 18px;">Reservasi Sekarang</a>
                        </div>
                      </div>
                    </div>
                  </div>
                  <?php } ?>
              </div><!-- END -->
          
            </div>
          </div>
        </div>
      </div>
    </div>


    <?php include 'template/font-menu.php'; ?>  
    <section class="ftco-section bg-light">
      <div class="container special-dish"> 
           
            <h3 style="text-align: center;">Our Specialties</h3> 
            Usually, we're all about getting out more. But these are unprecedented times. <br/>

We intend to do everything we can to support our restaurant partners in what is an extremely challenging time for the industry. Please remember that supporting restaurants does not necessarily mean dining out right now, and we would encourage our users to look out for any opportunity to do this - whether that is through buying vouchers to use at a later date, or ordering delivery. If you choose to spread the word on social media around how you’re supporting restaurants, please do let us know and we’ll continue to amplify these messages wherever we’re able.<br/>

We will of course continue to monitor the situation, and adapt as quickly and as sensitively as possible. In terms of our social media and email, you won’t hear the same messaging from us that you’re used to. Right now, we’re solely focused on what’s best for both diners and restaurants.<br/>

You can access the most up to date information surrounding COVID-19 via the World Health Organization, as well as the government's website. We’d urge our entire dining community to keep themselves informed at this time. 
      </div>
    </section>


  <?php include 'template/instagram.php'; ?>

  <?php include 'template/footer.php'; ?>


  <?php include 'template/script.php'; ?>
  
  <script src="dashboard/assets/vendor/jquery/jquery.js"></script>
  <script src="dashboard/assets/vendor/select2/select2.js"></script>
  <script src="dashboard/assets/vendor/bootstrap-multiselect/bootstrap-multiselect.js"></script>
    
  </body>
</html>