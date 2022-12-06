SELECT ar.artista_nome AS "artista",
	al.album_nome AS "album",
    COUNT(s.artista_id) AS "seguidores"
FROM SpotifyClone.Artistas AS ar
	INNER JOIN SpotifyClone.Albums AS al ON al.artista_id = ar.artista_id
    INNER JOIN SpotifyClone.Seguindo AS s ON s.artista_id = ar.artista_id
GROUP BY al.album_id
ORDER BY seguidores DESC, artista, album;