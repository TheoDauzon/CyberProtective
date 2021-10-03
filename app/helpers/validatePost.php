<?php


function validatePost($post)
{
    $errors = array();

    if (empty($post['title'])) {
        array_push($errors, 'Un titre est requis');
    }

    if (empty($post['body'])) {
        array_push($errors, 'Un corps est requis');
    }

    if (empty($post['topic_id'])) {
        array_push($errors, 'Un thème est requis');
    }

    $existingPost = selectOne('posts', ['title' => $post['title']]);
    if ($existingPost) {
        if (isset($post['update-post']) && $existingPost['id'] != $post['id']) {
            array_push($errors, 'Un article avec ce titre existe déjà');
        }

        if (isset($post['add-post'])) {
            array_push($errors, 'Un article avec ce titre existe déjà');
        }
    }

    return $errors;
}