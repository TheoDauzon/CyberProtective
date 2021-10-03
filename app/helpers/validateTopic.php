<?php

function validateTopic($topic)
{
    $errors = array();

    if (empty($topic['name'])) {
        array_push($errors, 'Un nom est requis');
    }

    $existingTopic = selectOne('topics', ['name' => $post['name']]);
    if ($existingTopic) {
        if (isset($post['update-topic']) && $existingTopic['id'] != $post['id']) {
            array_push($errors, 'Ce thème existe déjà');
        }

        if (isset($post['add-topic'])) {
            array_push($errors, 'Ce thème existe déjà');
        }
    }

    return $errors;
}
