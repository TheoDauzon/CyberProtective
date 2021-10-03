<?php include('path.php'); ?>
<?php include(ROOT_PATH . "/app/controllers/users.php"); 
guestsOnly();
?>
<!DOCTYPE html>
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

  <title>Connexion</title>
</head>

<body>

<?php include(ROOT_PATH . "/app/includes/header.php"); ?>

  <div class="auth-content">

    <form action="login.php" method="post" id="formConnexion">
      <h2 class="form-title">Connexion</h2>

      <?php include(ROOT_PATH . "/app/helpers/formErrors.php"); ?>

      <div>
        <label>Email</label>
        <input type="text" name="email" id="form1Login" value="<?php echo $email; ?>" class="text-input">
		<div id="form1LoginError"></div>
      </div>
      <div>
        <label>Mot de passe</label>
        <input type="password" name="password" id="form1Mdp" value="<?php echo $password; ?>" class="text-input">
		<div id="form1MdpError"></div>
      </div>
      <div>
        <button type="submit" name="login-btn" id="btnConnecter" class="btn btn-big">Se connecter</button>
      </div>
      <p>Ou <a href="<?php echo BASE_URL . '/register.php' ?>">S'inscrire</a></p>
    </form>
		<script>
			validationConnexion();			
		</script>
  </div>
		
  <!-- JQuery -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


</body>

</html>