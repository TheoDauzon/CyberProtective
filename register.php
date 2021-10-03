<?php include("path.php"); ?>
<?php include(ROOT_PATH . "/app/controllers/users.php");
guestsOnly();
?>

<html lang="fr">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">

  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
    integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Candal|Lora" rel="stylesheet">

  <!-- Custom Styling -->
  <link rel="stylesheet" href="assets/css/style.css">
  <script src="assets/js/scripts.js"></script>
  
  <title>Inscription</title>
</head>

<body>
  
<?php include(ROOT_PATH . "/app/includes/header.php"); ?>

  <div class="auth-content">

    <form action="register.php" method="post" id="formInscription">
      <h2 class="form-title">Inscription</h2>

      <?php include(ROOT_PATH . "/app/helpers/formErrors.php"); ?>

      <div>
        <label>Nom :</label>
        <input type="text" name="username" id="formNom" value="<?php echo $username; ?>" class="text-input" >
		<div id="formNomError"></div>
      </div>
	  <div>
        <label>Prénom :</label>
      <input type="text" name="prenom" id="formPrenom" value="<?php echo $prenom; ?>" class="text-input" >
	  <div id="formPrenomError"></div>
      </div>
	  <div>
        <label>Nom de l'entreprise :</label>
      <input type="text" name="nomEntreprise" id="formNomEntreprise" value="<?php echo $nomEntreprise; ?>" class="text-input" >
	  <div id="formNomEntrepriseError"></div>
      </div>
      <div>
        <label>Mail :</label>
        <input type="email" name="email"  id="formLogin" value="<?php echo $email; ?>" class="text-input">
		<div id="formLoginError"></div>
      </div>
      <div>
        <label>Mot de passe :</label>
        <input type="password" name="password" id="formMdp" value="<?php echo $password; ?>" class="text-input">
		<div id="formMdpError"></div>
      </div>
      <div>
        <label>Confirmation du mot de passe :</label>
        <input type="password" name="passwordConf"  id="formMdpConf" value="<?php echo $passwordConf; ?>" class="text-input">
		<div id="formMdpError"></div>
      </div>
      <div>
        <button type="submit" name="register-btn" id="btnInscrire" class="btn btn-big">S'inscrire</button>
      </div>
      <p>Ou <a href="<?php echo BASE_URL . '/login.php' ?>">Connectez-vous</a></p>
    </form>
	<script>
	validationInscription();
	</script>  
  </div>    
	
  <!-- JQuery -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


</body>

</html>