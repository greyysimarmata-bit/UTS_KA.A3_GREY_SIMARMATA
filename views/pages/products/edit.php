<h1>Edit Produk</h1>

<form method="POST">

    <label>Nama Produk</label>
    <input type="text"
           name="name"
           value="<?= $product['name'] ?>">

    <br><br>

    <label>Harga</label>
    <input type="number"
           name="price"
           value="<?= $product['price'] ?>">

    <br><br>

    <label>Stok</label>
    <input type="number"
           name="stock"
           value="<?= $product['stock'] ?>">

    <br><br>

    <button type="submit">
        Update Produk
    </button>

</form>