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
			$van='prot3';
			include 'menu.php'; 
			include 'db_connect.php';
		?>

		<main id="main">

			<div class="container-fluid">
			
				<div class="row topspace">
					
					<div class="do">
						<div class="col-md-2 col-sm-4 sidebar3">
							<div class="logo">
								<img src="assets\images\g3.png" width="100px" class="img-responsive center-block" alt="Logo">
							</div>
							<br>
							<div class="left-navigation">
								<ul class="list">
									<li id="43" class="<?php if($_GET['var']==43) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΑΓΙΑ ΜΑΡΙΝΑ</a></li>
									<li id="44" class="<?php if($_GET['var']==44) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΑΙΓΑΛΕΩ</a></li>
									<li id="45" class="<?php if($_GET['var']==45) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΕΛΑΙΩΝΑΣ</a></li>
									<li id="46" class="<?php if($_GET['var']==46) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΚΕΡΑΜΕΙΚΟΣ</a></li>
									<li id="8" class="<?php if($_GET['var']==8) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΜΟΝΑΣΤΗΡΑΚΙ</a></li>
									<li id="32" class="<?php if($_GET['var']==32) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΣΥΝΤΑΓΜΑ</a></li>
									<li id="47" class="<?php if($_GET['var']==47) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΕΥΑΓΓΕΛΙΣΜΟΣ</a></li>
									<li id="48" class="<?php if($_GET['var']==48) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΜΕΓΑΡΟ ΜΟΥΣΙΚΗΣ</a></li>
									<li id="49" class="<?php if($_GET['var']==49) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΑΜΠΕΛΟΚΗΠΟΙ</a></li>
									<li id="50" class="<?php if($_GET['var']==50) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΠΑΝΟΡΜΟΥ</a></li>
									<li id="51" class="<?php if($_GET['var']==51) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΚΑΤΕΧΑΚΗ</a></li>
									<li id="52" class="<?php if($_GET['var']==52) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΕΘΝΙΚΗ ΑΜΥΝΑ</a></li>
									<li id="53" class="<?php if($_GET['var']==53) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΧΟΛΑΡΓΟΣ</a></li>
									<li id="54" class="<?php if($_GET['var']==54) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΝΟΜΙΣΜΑΤΟΚΟΠΕΙΟ</a></li>
									<li id="55" class="<?php if($_GET['var']==55) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΑΓΙΑ ΠΑΡΑΣΚΕΥΗ</a></li>
									<li id="56" class="<?php if($_GET['var']==56) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΧΑΛΑΝΔΡΙ</a></li>
									<li id="57" class="<?php if($_GET['var']==57) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΔΟΥΚΙΣΣΗΣ ΠΛΑΚΕΝΤΙΑΣ</a></li>
									<li id="58" class="<?php if($_GET['var']==58) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΠΑΛΛΗΝΗ</a></li>
									<li id="59" class="<?php if($_GET['var']==59) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΠΑΙΑΝΙΑ ΚΑΝΤΖΑ</a></li>
									<li id="60" class="<?php if($_GET['var']==60) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΚΟΡΩΠΙ</a></li>
									<li id="61" class="<?php if($_GET['var']==61) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΑΕΡΟΔΡΟΜΙΟ</a></li>
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
							<h1 class="page-title" style="color: #223e5b; text-transform: uppercase; "> <?php echo $row1['station'] ?></h1>
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
									<p style="padding-top: 15px;"><a href="<?php echo $row1['url'] ?>" style="color: #1a6d91;" target="_blank">Περισσότερα...</a></p>
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
		console.log("yeyeyeyeyeye");
		function gothere(el) {
			
			var str = el.getAttribute("id");
			//window.open("protasi1.php?var=" +str);
			window.location.href = "protasi3.php?var=" + str;
		}
	</script>
</body>
</html>
