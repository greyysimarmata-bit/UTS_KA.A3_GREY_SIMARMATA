<?php

session_start();

require_once __DIR__ . '/../app/controllers/HomeController.php';
require_once __DIR__ . '/../app/controllers/ProductController.php';
require_once __DIR__ . '/../app/controllers/AuthController.php';

$uri = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);

switch ($uri) {

    case '/':
        $controller = new HomeController();
        $controller->index();
        break;

    case '/login':
        $controller = new AuthController();
        $controller->login();
        break;

    case '/products':
        $controller = new ProductController();
        $controller->index();
        break;

    case '/products/create':
        $controller = new ProductController();
        $controller->create();
        break;

    case '/products/delete':
        $controller = new ProductController();
        $controller->delete();
        break;


    case '/products/edit':
    $controller = new ProductController();
    $controller->edit();
    break;

    case '/logout':
        $controller = new AuthController();
        $controller->logout();
        break;

    default:
        http_response_code(404);
        echo "404 - Halaman tidak ditemukan";
}