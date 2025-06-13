CREATE TABLE grupo_membros (
    id_usuario INT,
    id_grupo INT,
    funcao ENUM('membro', 'administrador') DEFAULT 'membro',
    PRIMARY KEY (id_usuario, id_grupo),
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id) ON DELETE CASCADE,
    FOREIGN KEY (id_grupo) REFERENCES grupos(id) ON DELETE CASCADE
);
