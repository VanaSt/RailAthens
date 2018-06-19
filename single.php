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
	<!-- Icons -->
	<link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
	<!-- Fonts -->
	<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Alice|Open+Sans:400,300,700">
	<!-- Custom styles -->
	<link rel="stylesheet" href="assets/css/styles.css">

	<!--[if lt IE 9]> <script src="assets/js/html5shiv.js"></script> <![endif]-->
</head>
<body class="home">

<?php 
$van='contact';
include 'menu.php'; ?>
</br>
<main id="main">

	<div class="container">
		
		<p class="lead text-center text-muted">Επικοινωνήστε μαζί μας για ερωτήσεις, διευκρινίσεις, προτάσεις!</p>
		</br>	
	
	
    <div class="row">
      
		<div class="col-md-8">
      <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3144.8408317600506!2d23.72265121520035!3d37.980843708049896!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14a1bd245fab44d1%3A0x93c5b2bfdefa6d51!2zzpXOu867zrfOvc65zrrOriDOks65zr_PhM61z4fOvc65zrrOriDOlc-EzrHOuc-BzrXOr86xIC0gzpTOuc-AzrvOrM-BzrXOuc6_z4IgzqPPh86_zrvOrg!5e0!3m2!1sel!2sgr!4v1497032035563" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
          
          
      </div>
	  
	  	
	<div class="col-md-3 col-md-push-1">
          <div class="info">
            <div>
              <i class="fa fa-map-marker"></i>
              <p style="color: #440634">Πλατεία θεάτρου 3<br>Αθήνα, 535022</p>
            </div>
            
            <div>
              <i class="fa fa-envelope"></i>
              <p style="color: #440634">metro@athens.com</p>
            </div>
            
            <div>
              <i class="fa fa-phone"></i>
              <p style="color: #440634">6977407954</p>
            </div>
            
          </div>
        </div>
	
	</div>
	  
	  
	  
    </div>
	
	
	</br>
	
		
   
<h1 class="text-center" style="font-size:30px;"><a href="#myModal" role="button" class="btn btn-primary btn-lg" data-toggle="modal">Επικοινωνια</a></h1>
  
		

<div id="myModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h3 id="myModalLabel"><center>Επικοινωνήστε μαζί μας!!<center></h3>
      </div>
	  
	  
      <div class="modal-body">
       
	  

	  <form class="form-horizontal col-sm-12" name="contact-form" action="form.php" method="post">
          
		  <div class="form-group"><label>Όνομα</label><input class="form-control required" placeholder="Το όνομα σας" data-placement="top" data-trigger="manual" data-content="Τουλάχιστον 3 χαρακτήρες και μόνο γράμματα." type="text" name="onoma" max-lenght="100"></div>
          
          <div class="form-group"><label>E-Mail</label><input class="form-control email" placeholder="email@you.com" data-placement="top" data-trigger="manual" data-content="Όχι έγκυρο e-mail(user@gmail.com)" type="text" name="email" max-lenght="100"></div>
		  
          <div class="form-group"><label>Μήνυμα</label><textarea class="form-control" placeholder="Γράψτε το μήνυμα σας εδώ.." name="message" max-lenght="255" data-placement="top" data-trigger="manual"></textarea></div>
         
		 <div class="form-group"><button type="submit" class="btn btn-success pull-right">Στειλε Το !!</button> <p class="help-block pull-left text-danger hide" id="form-error">&nbsp; Η φόρμα δεν είναι έγκυρη. </p></div>
        </form>
		
		
		
      </div>
	  
	  
      <div class="modal-footer">
        <button class="btn" data-dismiss="modal" aria-hidden="true">Ακυρωση</button>
      </div>
    </div>
  </div>
</div>
	
		
		
	
		

		
		
		
		


		
		
		
		
		<div class="clearfix"></div>

	</div>	<!-- /container -->
</div>	
</main>
</br></br></br></br></br></br>

<?php include 'footer.php'; ?>




<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="assets/js/template.js"></script>
<script>/* form validation plugin */
$.fn.goValidate = function() {
    var $form = this,
        $inputs = $form.find('input:text');
  
    var validators = {
        name: {
            regex: /^[A-Za-z]{3,}$/
        },
        pass: {
            regex: /(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}/
        },
        email: {
            regex: /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/
        },
        phone: {
            regex: /^[2-9]\d{2}-\d{3}-\d{4}$/,
        }
    };
    var validate = function(klass, value) {
        var isValid = true,
            error = '';
            
        if (!value && /required/.test(klass)) {
            error = 'This field is required';
            isValid = false;
        } else {
            klass = klass.split(/\s/);
            $.each(klass, function(i, k){
                if (validators[k]) {
                    if (value && !validators[k].regex.test(value)) {
                        isValid = false;
                        error = validators[k].error;
                    }
                }
            });
        }
        return {
            isValid: isValid,
            error: error
        }
    };
    var showError = function($input) {
        var klass = $input.attr('class'),
            value = $input.val(),
            test = validate(klass, value);
      
        $input.removeClass('invalid');
        $('#form-error').addClass('hide');
        
        if (!test.isValid) {
            $input.addClass('invalid');
            
            if(typeof $input.data("shown") == "undefined" || $input.data("shown") == false){
               $input.popover('show');
            }
            
        }
      else {
        $input.popover('hide');
      }
    };
   
    $inputs.keyup(function() {
        showError($(this));
    });
  
    $inputs.on('shown.bs.popover', function () {
  		$(this).data("shown",true);
	});
  
    $inputs.on('hidden.bs.popover', function () {
  		$(this).data("shown",false);
	});
  
    $form.submit(function(e) {
      
        $inputs.each(function() { /* test each input */
        	if ($(this).is('.required') || $(this).hasClass('invalid')) {
            	showError($(this));
        	}
    	});
        if ($form.find('input.invalid').length) { /* form is not valid */
        	e.preventDefault();
            $('#form-error').toggleClass('hide');
        }
    });
    return this;
};
$('form').goValidate();

</script>
</body>
</html>
