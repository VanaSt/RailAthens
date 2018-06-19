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
 
$van='prot2';
include 'menu.php'; 
include 'db_connect.php';
?>

<main id="main">

	<div class="container-fluid">

		<div class="row topspace">
		
		<div class="do">
		
		<div class="col-md-2 col-sm-4 sidebar2">
                <div class="logo">
                    <img src="assets\images\g2.png" width="100px" class="img-responsive center-block" alt="Logo">
                </div>
                <br>
                <div class="left-navigation">
                    <ul class="list">
                        <li id="25" class="<?php if($_GET['var']==25) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΑΝΘΟΥΠΟΛΗ</a></li>
                        <li id="26" class="<?php if($_GET['var']==26) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΠΕΡΙΣΤΕΡΙ</a></li>
                        <li id="27" class="<?php if($_GET['var']==27) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΑΓΙΟΣ ΑΝΤΩΝΙΟΣ</a></li>
                        <li id="28" class="<?php if($_GET['var']==28) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΣΕΠΟΛΙΑ</a></li>
                        <li id="11" class="<?php if($_GET['var']==11) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΑΤΤΙΚΗ</a></li>
                        <li id="29" class="<?php if($_GET['var']==29) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΣΤΑΘΜΟΣ ΛΑΡΙΣΗΣ</a></li>
                        <li id="30" class="<?php if($_GET['var']==30) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΜΕΤΑΞΟΥΡΓΕΙΟ</a></li>
                        <li id="9" class="<?php if($_GET['var']==9) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΟΜΟΝΟΙΑ</a></li>
                        <li id="31" class="<?php if($_GET['var']==31) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΠΑΝΕΠΙΣΤΗΜΙΟ</a></li>
                        <li id="32" class="<?php if($_GET['var']==32) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΣΥΝΤΑΓΜΑ</a></li>
                        <li id="33" class="<?php if($_GET['var']==33) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΑΚΡΟΠΟΛΗ</a></li>
                        <li id="34" class="<?php if($_GET['var']==34) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΣΥΓΓΡΟΥ ΦΙΞ</a></li>
						<li id="35" class="<?php if($_GET['var']==35) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΝΕΟΣ ΚΟΣΜΟΣ</a></li>
                        <li id="36" class="<?php if($_GET['var']==36) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΑΓΙΟΣ ΙΩΑΝΝΗΣ</a></li>
                        <li id="37" class="<?php if($_GET['var']==37) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΔΑΦΝΗ</a></li>
                        <li id="38" class="<?php if($_GET['var']==38) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΑΓΙΟΣ ΔΗΜΗΤΡΙΟΣ</a></li>
                        <li id="39" class="<?php if($_GET['var']==39) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΗΛΙΟΥΠΟΛΗ</a></li>
                        <li id="40" class="<?php if($_GET['var']==40) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΑΛΙΜΟΣ</a></li>
                        <li id="41" class="<?php if($_GET['var']==41) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΑΡΓΥΡΟΥΠΟΛΗ</a></li>
                        <li id="42" class="<?php if($_GET['var']==42) { echo "opa";} ?>"onclick="gothere(this)"><a href="#">ΕΛΛΗΝΙΚΟ</a></li>
                       
                    </ul>
                </div>
            </div>
		</div>
		
		
						<?php 

				

				 $prot1 = $conn->query("SELECT firma, bio, phone, address, xartis, photo, url, stathmos.onoma AS station FROM protasi INNER JOIN stathmos ON protasi.id_stathmos = stathmos.id WHERE id_stathmos=".$_GET['var']."");

				if($prot1->num_rows > 0) {
					while($row1 = $prot1->fetch_assoc()) { 
						
				 ?>
						
						
						<header class="page-header">
									<h1 class="page-title" style="color: #591b21; text-transform: uppercase; "> <?php echo $row1['station'] ?></h1>
									
						</header>
						
						
						
						<div class="re">
						
							<!-- Article main content -->
							<article class="col-sm-6 maincontent">
								<header class="page-header">
									<h2 class="page-title" style="color: #000"><?php echo $row1['firma'] ?></h2>
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
									<p style="padding-top: 15px;"><a href="<?php echo $row1['url'] ?>" style="color: #c14343;" target="_blank">Περισσότερα...</a></p>
									
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
	window.location.href = "protasi2.php?var=" + str;
}
</script>
</body>
</html>
