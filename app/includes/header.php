<header>
<style>
header {
 background-color: #6495ED;
}
</style>
    <a href="<?php echo BASE_URL . '/index.php' ?>" class="logo">
      <h1 class="logo-text"><span>Cyber</span>Protective</h1>
    </a>
    <i class="fa fa-bars menu-toggle"></i>
    <ul class="nav">
      <li><a href="<?php echo BASE_URL . '/index.php' ?>">Accueil</a></li>

      <?php if (isset($_SESSION['id'])): ?>
        <li>
          <a href="#">
            <i class="fa fa-user"></i>
			<?php echo $_SESSION['prenom']; ?>
            <?php echo $_SESSION['username']; ?>
            <i class="fa fa-chevron-down" style="font-size: .8em;"></i>
          </a>
          <ul>
            <?php if($_SESSION['admin']): ?>
              <li><a href="<?php echo BASE_URL . '/admin/dashboard.php' ?>">Menu administrateur</a></li>
            <?php endif; ?>
			<li><a href="<?php echo BASE_URL . '/welcome.php?q=1' ?>" class="tes">Test de sécurité</a></li>
            <li><a href="<?php echo BASE_URL . '/logout.php' ?>" class="logout">Déconnexion</a></li>

          </ul>
        </li>
      <?php else: ?>
        <li><a href="<?php echo BASE_URL . '/register.php' ?>">Inscription</a></li>
        <li><a href="<?php echo BASE_URL . '/login.php' ?>">Connexion</a></li>
      <?php endif; ?>
    </ul><br><br><br>
</header>