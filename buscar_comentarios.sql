--Buscar comentários por ID do post

SELECT 
                c.*, 
                u.username, 
                u.foto_perfil,
                IFNULL(likes.likes, 0) AS likes,
                IFNULL(dislikes.dislikes, 0) AS dislikes
            FROM comentarios c
            JOIN usuarios u ON c.id_usuario = u.id
            LEFT JOIN (
                SELECT id_alvo, COUNT(*) AS likes 
                FROM avaliacoes 
                WHERE tipo_alvo = 'comentario' AND valor = 'positivo' 
                GROUP BY id_alvo
            ) AS likes ON likes.id_alvo = c.id
            LEFT JOIN (
                SELECT id_alvo, COUNT(*) AS dislikes 
                FROM avaliacoes 
                WHERE tipo_alvo = 'comentario' AND valor = 'negativo' 
                GROUP BY id_alvo
            ) AS dislikes ON dislikes.id_alvo = c.id
            WHERE c.id_postagem = ?
            ORDER BY c.data_criacao ASC