-- Conexões entre usuários (amizades)
CREATE TABLE conexoes (
    id_usuario1 INT,
    id_usuario2 INT,
    data_conexao DATETIME DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id_usuario1, id_usuario2),
    FOREIGN KEY (id_usuario1) REFERENCES usuarios(id) ON DELETE CASCADE,
    FOREIGN KEY (id_usuario2) REFERENCES usuarios(id) ON DELETE CASCADE
);
