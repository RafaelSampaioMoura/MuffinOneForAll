SELECT CONCAT(u.usuario_nome," ",u.sobrenome) AS usuario,
	IF(YEAR(MAX(f.ultima_reproducao)) >= 2021, "Usuário ativo", "Usuário inativo") AS status_usuario
FROM SpotifyClone.Usuarios AS u
	INNER JOIN SpotifyClone.Favoritos AS f ON f.usuario_id = u.usuario_id
GROUP BY u.usuario_id
ORDER BY u.usuario_nome;