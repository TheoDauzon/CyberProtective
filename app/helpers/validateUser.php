<?php

function validateUser($user)
{
    $errors = array();
	
	if (empty($user['email'])) {
        array_push($errors, 'L\'adresse email n\'est pas valide !');
    }

    if (empty($user['username'])) {
        array_push($errors, 'Vous devez rentrer un nom pour vous inscrire !');
    }
	
	if (empty($user['prenom'])) {
        array_push($errors, 'Vous devez rentrer un prénom pour vous inscrire !');
    }
	
	if (empty($user['nomEntreprise'])) {
        array_push($errors, 'Vous devez rentrer le nom de votre entreprise pour vous inscrire !');
    }

    if (empty($user['password'])) {
        array_push($errors, 'Vous devez saisir un mot de passe !');
    }

    if ($user['passwordConf'] !== $user['password']) {
        array_push($errors, 'Vos mots de passes sont différents');
    }

    $existingUser = selectOne('users', ['email' => $user['email']]);
    if ($existingUser) {
        if (isset($user['update-user']) && $existingUser['id'] != $user['id']) {
            array_push($errors, 'Cette adresse mail est déjà utilisée');
        }

        if (isset($user['create-admin'])) {
            array_push($errors, 'Cette adresse mail est déjà utilisée');
        }
    }

    return $errors;
}


function validateLogin($user)
{
    $errors = array();

    if (empty($user['email'])) {
        array_push($errors, 'L\'adresse email n\'est pas valide !');
    }

    if (empty($user['password'])) {
        array_push($errors, 'Vous devez saisir un mot de passe !');
    }

    return $errors;
}