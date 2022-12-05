SELECT CONCAT(u.usuario_nome," ",u.sobrenome) AS usuario,
	COUNT(f.usuario_id) AS qt_de_musicas_ouvidas,
    ROUND(SUM(c.duracao_segundos)/ 60, 2) AS total_minutos
FROM SpotifyClone.Usuarios AS u
	INNER JOIN SpotifyClone.Favoritos AS f ON f.usuario_id = u.usuario_id
    INNER JOIN SpotifyClone.Cancoes AS c ON c.cancao_id = f.cancao_id
GROUP BY u.usuario_id
ORDER BY u.usuario_nome;