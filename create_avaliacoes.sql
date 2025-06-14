CREATE TABLE avaliacoes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    tipo_alvo ENUM('postagem', 'comentario') NOT NULL,
    id_alvo INT NOT NULL,
    valor ENUM('positivo', 'negativo') NOT NULL,
    data_avaliacao DATETIME DEFAULT CURRENT_TIMESTAMP,
    UNIQUE (id_usuario, tipo_alvo, id_alvo),
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id) ON DELETE CASCADE
);
