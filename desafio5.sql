SELECT c.cancao_nome AS cancao,
	COUNT(f.ultima_reproducao) AS reproducoes
FROM SpotifyClone.Cancoes AS c
	INNER JOIN SpotifyClone.Favoritos AS f ON f.cancao_id = c.cancao_id
GROUP BY c.cancao_nome
ORDER BY reproducoes DESC, c.cancao_nome
LIMIT 2;