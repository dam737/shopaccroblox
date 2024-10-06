<?php

require_once '../../bootstrap.php';

$title = 'Blog';

$categories = $db->select('categories', '*', [
    'type' => 'blog',
]);

require_once '../../views/blog/index2.php';