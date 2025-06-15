--Buscar postagens globais

SELECT 
                p.*, 
                u.username, 
                u.foto_perfil,
                IFNULL(likes.likes, 0) AS likes,
                IFNULL(dislikes.dislikes, 0) AS dislikes
            FROM postagens p
            JOIN usuarios u ON p.id_usuario = u.id
            LEFT JOIN (
                SELECT id_alvo, COUNT(*) AS likes 
                FROM avaliacoes 
                WHERE tipo_alvo = 'postagem' AND valor = 'positivo' 
                GROUP BY id_alvo
            ) AS likes ON likes.id_alvo = p.id
            LEFT JOIN (
                SELECT id_alvo, COUNT(*) AS dislikes 
                FROM avaliacoes 
                WHERE tipo_alvo = 'postagem' AND valor = 'negativo' 
                GROUP BY id_alvo
            ) AS dislikes ON dislikes.id_alvo = p.id
            WHERE p.id_grupo IS NULL
            ORDER BY p.data_criacao DESC