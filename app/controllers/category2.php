<?php


define('ROOT_PATH', dirname(__DIR__, 2));

require_once ROOT_PATH . '/app/bootstrap.php';


$categories = $db->select('categories', '*', ['type' => 'game', 'status' => 1]);

require_once ROOT_PATH . '/app/views/category2.php';
