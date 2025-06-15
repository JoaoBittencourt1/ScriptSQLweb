--script usado para verificar se o usuario tem acesso ao grupo

SELECT id, nome, descricao FROM grupos WHERE id = ?

-- usado para busca mas a logica fica no backend