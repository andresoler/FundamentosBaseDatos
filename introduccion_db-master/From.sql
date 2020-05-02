-- FROM
/*FROM indica de dónde se deben traer los datos y puede ayudar a hacer sentencias y filtros 
complejos cuando se quieren unir tablas. La sentencia compañera que nos ayuda con este proceso es JOIN.

Los diagramas de Venn son círculos que se tocan en algún punto para ver dónde está la intersección de conjuntos. 
Ayudan mucho para poder formular la sentencia JOIN de la manera adecuada dependiendo del query que se quiere hacer.
*/
SELECT	*
FROM		posts;
    
SELECT	*
FROM	usuarios 
	LEFT JOIN posts on usuarios.id = posts.usuario_id;
    
SELECT	*
FROM	usuarios 
	LEFT JOIN posts on usuarios.id = posts.usuario_id
WHERE	posts.usuario_id IS NULL;

SELECT	*
FROM	usuarios 
	RIGHT JOIN posts on usuarios.id = posts.usuario_id;
    
SELECT	*
FROM	usuarios 
	RIGHT JOIN posts on usuarios.id = posts.usuario_id
WHERE	posts.usuario_id IS NULL;

SELECT	*
FROM	usuarios 
	INNER JOIN posts on usuarios.id = posts.usuario_id;
    
SELECT	*
FROM	usuarios 
	JOIN posts on usuarios.id = posts.usuario_id;
    
SELECT	*
FROM		usuarios 
	LEFT JOIN posts   ON usuarios.id = posts.usuario_id
UNION 
SELECT	*
FROM		usuarios 
	RIGHT JOIN posts ON usuarios.id = posts.usuario_id;
    
SELECT	*
FROM	usuarios 
	LEFT JOIN posts on usuarios.id = posts.usuario_id
WHERE	posts.usuario_id IS NULL
UNION
SELECT	*
FROM	usuarios 
	RIGHT JOIN posts on usuarios.id = posts.usuario_id
WHERE	posts.usuario_id IS NULL;