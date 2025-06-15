--Auto-avaliação positiva ao criar uma postagem

DELIMITER $$

CREATE TRIGGER auto_avaliar_postagem
AFTER INSERT ON postagens
FOR EACH ROW
BEGIN
  INSERT INTO avaliacoes (
    id_usuario,
    tipo_alvo,
    id_alvo,
    valor,
    data_avaliacao
  ) VALUES (
    NEW.id_usuario,
    'postagem',
    NEW.id,
    'positivo',
    NOW()
  );
END $$

DELIMITER ;
