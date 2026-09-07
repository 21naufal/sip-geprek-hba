require("dotenv").config();
const bcrypt = require("bcrypt");
const db = require("./config/db");

const [, , nama, telepon, password] = process.argv;

if (!nama || !telepon || !password) {
  console.error(
    'Cara pakai: node create-admin.js "Nama Admin" "081234567890" "password_rahasia"',
  );
  process.exit(1);
}

(async () => {
  try {
    const hashedPassword = await bcrypt.hash(password, 10);

    db.query(
      "INSERT INTO users (nama, telepon, password, role) VALUES (?, ?, ?, 'admin')",
      [nama, telepon, hashedPassword],
      (err, result) => {
        if (err) {
          console.error("❌ Gagal membuat akun admin:", err.message);
          process.exit(1);
        }
        console.log(
          "✅ Akun admin berhasil dibuat dengan id:",
          result.insertId,
        );
        process.exit(0);
      },
    );
  } catch (err) {
    console.error("❌ Terjadi kesalahan:", err.message);
    process.exit(1);
  }
})();
