<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta name="viewport"    content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author"      content="Sergey Pozhilov (GetTemplate.com)">
	
	<title>Rail Athens</title>

	<link rel="shortcut icon" href="assets/images/gt_favicon.png">
	<!-- Bootstrap -->
	<link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.no-icons.min.css" rel="stylesheet">
	<!-- Icon font -->
	<link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
	<!-- Fonts -->
	<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Alice|Open+Sans:400,300,700">
	<!-- Custom styles -->
	<link rel="stylesheet" href="assets/css/styles.css">

	<!--[if lt IE 9]> <script src="assets/js/html5shiv.js"></script> <![endif]-->
</head>

<body>
	<div id="prot">

		<?php 
			$van='prot1';
			include 'menu.php'; 
			include 'db_connect.php';
		?>

		<main id="main">

			<div class="container-fluid">

				<div class="row topspace">
				
					<div class="do">
						<div class="col-md-2 col-sm-4 sidebar1" >
							<div class="logo">
								<img src="assets\images\g1.png" width="100px" class="img-responsive center-block" alt="Logo">
							</div>
							<br>
							<div class="left-navigation">
								<ul class="list">
									<li id="1" class="<?php if($_GET['var']==1) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΠΕΙΡΑΙΑΣ</a></li>
									<li id="2" class="<?php if($_GET['var']==2) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΦΑΛΗΡΟ</a></li>
									<li id="3" class="<?php if($_GET['var']==3) { echo "opa";} ?>" onclick="gothere(this)"><a href="#"  >ΜΟΣΧΑΤΟ</a></li>
									<li id="4" class="<?php if($_GET['var']==4) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΚΑΛΛΙΘΕΑ</a></li>
									<li id="5" class="<?php if($_GET['var']==5) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΤΑΥΡΟΣ</a></li>
									<li id="6" class="<?php if($_GET['var']==6) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΠΕΤΡΑΛΩΝΑ</a></li>
									<li id="7" class="<?php if($_GET['var']==7) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΘΗΣΕΙΟ</a></li>
									<li id="8" class="<?php if($_GET['var']==8) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΜΟΝΑΣΤΗΡΑΚΙ</a></li>
									<li id="9" class="<?php if($_GET['var']==9) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΟΜΟΝΟΙΑ</a></li>
									<li id="10" class="<?php if($_GET['var']==10) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΒΙΚΤΩΡΙΑ</a></li>
									<li id="11" class="<?php if($_GET['var']==11) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΑΤΤΙΚΗ</a></li>
									<li id="12" class="<?php if($_GET['var']==12) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΑΓΙΟΣ ΝΙΚΟΛΑΟΣ</a></li>
									<li id="13" class="<?php if($_GET['var']==13) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΚΑΤΩ ΠΑΤΗΣΙΑ</a></li>
									<li id="14" class="<?php if($_GET['var']==14) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΑΓΙΟΣ ΕΛΕΥΘΕΡΙΟΣ</a></li>
									<li id="15" class="<?php if($_GET['var']==15) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΑΝΩ ΠΑΤΗΣΙΑ</a></li>
									<li id="16" class="<?php if($_GET['var']==16) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΠΕΡΙΣΣΟΣ</a></li>
									<li id="17" class="<?php if($_GET['var']==17) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΠΕΥΚΑΚΙΑ</a></li>
									<li id="18" class="<?php if($_GET['var']==18) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΝΕΑ ΙΩΝΙΑ</a></li>
									<li id="19" class="<?php if($_GET['var']==19) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΗΡΑΚΛΕΙΟ</a></li>
									<li id="20" class="<?php if($_GET['var']==20) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΕΙΡΗΝΗ</a></li>
									<li id="21" class="<?php if($_GET['var']==21) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΝΕΡΑΤΖΙΩΤΙΣΣΑ</a></li>
									<li id="22" class="<?php if($_GET['var']==22) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΜΑΡΟΥΣΙ</a></li>
									<li id="23" class="<?php if($_GET['var']==23) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΚΑΤ</a></li>
									<li id="24" class="<?php if($_GET['var']==24) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΚΗΦΙΣΙΑ</a></li>
								</ul>
								<br>
							</div>
						</div>
					</div>
								
					<?php 
						$prot1 = $conn->query("SELECT firma, bio, phone, address, xartis, photo, url, stathmos.onoma AS station FROM protasi INNER JOIN stathmos ON protasi.id_stathmos = stathmos.id WHERE id_stathmos=".$_GET['var']."");

						if($prot1->num_rows > 0) {
							while($row1 = $prot1->fetch_assoc()) { 	
					?>
									
						<header class="page-header">
							<h1 class="page-title" style="color: #173f16; text-transform: uppercase; "> <?php echo $row1['station'] ?></h1>
						</header>
									
						<div class="re">
							<!-- Article main content -->
							<article class="col-sm-6 maincontent">
								<header class="page-header">
									<h2 class="page-title" style="color: #000;"><?php echo $row1['firma'] ?></h2>
								</header>

								<p><img src="<?php echo $row1['photo'] ?>" alt="" width="700px" height="400"></p>

								<p><?php echo $row1['bio'] ?></p>
							</article>
							<!-- /Article -->
						</div>
								
						<div class="mi">
							<!-- Sidebar -->
							<aside class="col-md-3 sidebar sidebar-left">
								<div class="widget">
									<h4 style="color: #000; font-size: 16px;"><?php echo $row1['address'] ?></h4>
									<h4 style="color: #000; font-size: 16px;"><?php echo $row1['phone'] ?></h4>
									<p style="padding-top: 15px;"><a href="<?php echo $row1['url'] ?>" style="color: #22d658; " target="_blank">Περισσότερα...</a></p>
									<p><?php echo $row1['xartis'] ?></p>
								</div>							
							</aside>			
							<!-- /Sidebar -->
						</div>
							
					<?php } } ?>

				</div>

			</div>	<!-- /container -->
			
		</main>

		<?php include 'footer.php'; ?>

	</div>


	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<script src="assets/js/template.js"></script>
	<script src="JavaScript/jquery-1.10.2.js" type="text/javascript"></script> 
	<script>
		function gothere(el) {
			
			var str = el.getAttribute("id");
			//window.open("protasi1.php?var=" +str);
			window.location.href = "protasi1.php?var=" + str;
		}
	</script>

</body>
</html>
