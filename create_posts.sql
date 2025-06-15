CREATE TABLE postagens (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    data_criacao DATETIME DEFAULT CURRENT_TIMESTAMP,
    conteudo TEXT NOT NULL,
    tipo ENUM('texto', 'imagem', 'video') NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id) ON DELETE CASCADE
);

ALTER TABLE postagens 
ADD COLUMN id_grupo INT NULL;


ALTER TABLE postagens 
ADD CONSTRAINT fk_posts_grupo 
FOREIGN KEY (id_grupo) REFERENCES grupos(id);