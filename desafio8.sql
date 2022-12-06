SELECT ar.artista_nome AS "artista",
	al.album_nome AS "album"
FROM SpotifyClone.Artistas AS ar
	INNER JOIN SpotifyClone.Albums AS al ON al.artista_id = ar.artista_id
	WHERE ar.artista_nome = "Elis Regina"
GROUP BY al.album_id
ORDER BY album;