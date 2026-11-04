<?php

require_once __DIR__ . '/../../config/database.php';

class ProductController
{
    public function index()
    {
        if (!isset($_SESSION['user_id'])) {
            header('Location: /login');
            exit;
        }

        global $pdo;

        $stmt = $pdo->query("SELECT * FROM products");
        $products = $stmt->fetchAll(PDO::FETCH_ASSOC);

        require __DIR__ . '/../../views/pages/products/index.php';
    }

    public function create()
    {
        global $pdo;

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {

            $name = $_POST['name'];
            $price = $_POST['price'];
            $stock = $_POST['stock'];

            $stmt = $pdo->prepare(
                "INSERT INTO products (name, price, stock)
                 VALUES (?, ?, ?)"
            );

            $stmt->execute([$name, $price, $stock]);

            header('Location: /products');
            exit;
        }

        require __DIR__ . '/../../views/pages/products/create.php';
    }

    public function edit()
    {
        global $pdo;

        $id = $_GET['id'];

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {

            $name = $_POST['name'];
            $price = $_POST['price'];
            $stock = $_POST['stock'];

            $stmt = $pdo->prepare(
                "UPDATE products
                 SET name = ?, price = ?, stock = ?
                 WHERE id = ?"
            );

            $stmt->execute([
                $name,
                $price,
                $stock,
                $id
            ]);

            header('Location: /products');
            exit;
        }

        $stmt = $pdo->prepare(
            "SELECT * FROM products WHERE id = ?"
        );

        $stmt->execute([$id]);

        $product = $stmt->fetch(PDO::FETCH_ASSOC);

        require __DIR__ . '/../../views/pages/products/edit.php';
    }

    public function delete()
    {
        global $pdo;

        $id = $_GET['id'];

        $stmt = $pdo->prepare(
            "DELETE FROM products WHERE id = ?"
        );

        $stmt->execute([$id]);

        header('Location: /products');
        exit;
    }
}