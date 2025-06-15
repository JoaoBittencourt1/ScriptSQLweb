--Listar grupos do usuario

SELECT g.id, g.nome, g.descricao, gm.funcao
            FROM grupos g
            JOIN grupo_membros gm ON g.id = gm.id_grupo
            WHERE gm.id_usuario = ?