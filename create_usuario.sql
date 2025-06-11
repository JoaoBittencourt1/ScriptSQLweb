CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    data_nascimento DATE NOT NULL,
    foto_perfil BLOB
);

ALTER TABLE usuarios MODIFY foto_perfil VARCHAR(255);

ALTER TABLE usuarios
ADD COLUMN senha VARCHAR(255) NOT NULL;