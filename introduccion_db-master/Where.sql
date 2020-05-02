
/*WHERE es la sentencia que nos ayuda a filtrar tuplas o registros dependiendo de las características que elegimos.

La propiedad LIKE nos ayuda a traer registros de los cuales conocemos sólo una parte de la información.
La propiedad BETWEEN nos sirve para arrojar registros que estén en el medio de dos. 
Por ejemplo los registros con id entre 20 y 30.*/


-- WHERE examples

SELECT	*
FROM		posts
WHERE	id	< 50;

SELECT	*
FROM		posts
WHERE	estatus = 'Inactivo';

SELECT	*
FROM		posts
WHERE	titulo LIKE '%escandalo%';

SELECT	*
FROM		posts
WHERE	fecha_publicacion > '2025-01-01';

SELECT	*
FROM		posts
WHERE	fecha_publicacion BETWEEN '2023-01-01' AND '2025-12-31';

SELECT	*
FROM		posts
WHERE	YEAR(fecha_publicacion) BETWEEN '2023' AND '2024';

SELECT	*
FROM		posts
WHERE	MONTH(fecha_publicacion) = '04';

SELECT	*
FROM		posts
WHERE	usuario_id IS NOT NULL;

SELECT	*
FROM		posts
WHERE	usuario_id IS NULL;