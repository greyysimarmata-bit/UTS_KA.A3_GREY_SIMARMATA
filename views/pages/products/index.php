<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Daftar Produk</title>

    <link rel="stylesheet" href="/css/style.css">
</head>
<body>

<div class="container">

    <h1>🛒 Daftar Produk My Store</h1>

    <div class="top-menu">
        <a href="/products/create" class="add-btn">
            + Tambah Produk
        </a>

        <a href="/logout"
           class="logout-btn"
           onclick="return confirm('Yakin ingin logout?')">
            Logout
        </a>
    </div>

    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Nama Produk</th>
                <th>Harga</th>
                <th>Stok</th>
                <th>Aksi</th>
            </tr>
        </thead>

        <tbody>

        <?php foreach ($products as $product): ?>

            <tr>
                <td><?= $product['id'] ?></td>

                <td><?= htmlspecialchars($product['name']) ?></td>

                <td>
                    Rp <?= number_format($product['price'], 0, ',', '.') ?>
                </td>

                <td><?= $product['stock'] ?></td>

                <td>
                    <a class="edit"
                       href="/products/edit?id=<?= $product['id'] ?>">
                        Edit
                    </a>

                    |

                    <a class="delete"
                       href="/products/delete?id=<?= $product['id'] ?>"
                       onclick="return confirm('Yakin ingin menghapus produk?')">
                        Hapus
                    </a>
                </td>
            </tr>

        <?php endforeach; ?>

        </tbody>
    </table>

</div>

</body>
</html>