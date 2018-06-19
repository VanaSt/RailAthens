<header id="header">
	<div id="head" class="parallax" parallax-speed="1">
		<h1 id="logo" class="text-center">
			<img class="img-circle" src="assets/images/logo.png" alt="">
			<span class="title">Rail Athens</span>
			
		</h1>
	</div>
<nav id="trig" class="navbar navbar-default navbar-sticky">
	<div class="container-fluid">
			
		<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
		</div>
			
		<div class="navbar-collapse collapse" id="bs-example-navbar-collapse-1" ;>
				
			<ul class="nav navbar-nav">
				
				<li <?php if($van=='home') echo "class='active'"; ?>><a href="arxiki.php" >Rail Athens</a></li>
				
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">ΓΡΑΜΜΕΣ <b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="1.0_line.php">ΓΡΑΜΜΗ 1 - ΠΡΑΣΙΝΗ</a></li>
						<li><a href="2.0_line.php">ΓΡΑΜΜΗ 2 - ΚΟΚΚΙΝΗ</a></li>
						<li><a href="3.0_line.php">ΓΡΑΜΜΗ 3 - ΜΠΛΕ</a></li>
					</ul>
				</li>
				
				<li <?php if($van=='team') echo "class='active'"; ?>><a href="about.php">Η ΟΜΑΔΑ ΜΑΣ</a></li>
				
				<li <?php if($van=='contact') echo "class='active'"; ?>><a href="single.php">ΕΠΙΚΟΙΝΩΝΙΑ</a></li>
					
			</ul>
			
		</div><!--/.nav-collapse -->			
	</div>	
</nav>
</header>
