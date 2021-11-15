package busquedas

import (
	"database/sql"
	"fmt"
	"tesis/modelos"
)

/*
Entradas:
db: *sql.DB sacado de la librería database/sql. Manejador de conexión a bases de datos mysql
(pgsql en este caso)

Salidas:
[]modelos.Usuario: sacado de un struct en el paquete modelos que representa al usuario y sus datos
error: Error en caso de que algo salga mal

Descripción:
Retorna todos los usuarios de la DB en un array de struct de Usuario.
*/
func ObtenerUsuarios(db *sql.DB) ([]modelos.Usuario, error) {
	rows, err := db.Query("SELECT * FROM usuarios")
	if err != nil {
		return nil, err
	}
	defer rows.Close()
	var usuarios []modelos.Usuario

	for rows.Next() {
		var usuario modelos.Usuario
		if err := rows.Scan(&usuario.ID, &usuario.Nombre, &usuario.Correo,
			&usuario.FechaNacimiento, &usuario.IdComuna); err != nil {
			return usuarios, err
		}
		usuarios = append(usuarios, usuario)
	}
	if err = rows.Err(); err != nil {
		return usuarios, err
	}
	return usuarios, nil
}

/*
Entradas:
db: *sql.DB sacado de la librería database/sql. Manejador de conexión a bases de datos mysql
(pgsql en este caso)
idUsuario: int que indica el id del usuario a sacar los datos.

Salidas:
string: Comuna a la que pertenece un usuario
string: Región a la que pertenece un usuario
error: Error en caso de que algo salga mal

Descripción:
En base a un usuario específico, retorna la comuna y región a la que pertenece.
*/
func ObtenerUbicacionUsuario(db *sql.DB, idUsuario int) (string, string, error) {
	query := fmt.Sprintf("SELECT r.nombre, c.nombre "+
		"FROM usuarios u, regiones r, comunas c "+
		"WHERE u.id = %d and c.id = u.id_comuna and r.id = c.id_region", idUsuario)
	rows, err := db.Query(query)
	if err != nil {
		return "", "", err
	}
	defer rows.Close()
	comuna, region := "", ""
	for rows.Next() {
		if err := rows.Scan(&region, &comuna); err != nil {
			return comuna, region, err
		}
	}
	if err = rows.Err(); err != nil {
		return comuna, region, err
	}

	return comuna, region, nil
}

/*
Entradas:
db: *sql.DB sacado de la librería database/sql. Manejador de conexión a bases de datos mysql
(pgsql en este caso)
idUsuario: int que indica el id del usuario a sacar los datos.

Salidas:
[]string: Lista de string con las consideraciones médicas del usuario
error: Error en caso de que algo salga mal

Descripción:
En base a un usuario específico retorna todas las consideraciones médicas asociadas.
*/
func ObtenerConsideracionesMedicasUsuario(db *sql.DB, idUsuario int) ([]string, error) {
	query := fmt.Sprintf("SELECT cm.nombre "+
		"FROM usuarios u, consideraciones_medicas cm , usuario_consideraciones uc "+
		"WHERE u.id = %d and uc.id_usuario = u.id and uc.id_consideracion = cm.id", idUsuario)
	rows, err := db.Query(query)
	if err != nil {
		return nil, err
	}
	defer rows.Close()
	var consideraciones []string

	for rows.Next() {
		var consideracion string
		if err := rows.Scan(&consideracion); err != nil {
			return consideraciones, err
		}
		consideraciones = append(consideraciones, consideracion)
	}

	if err := rows.Err(); err != nil {
		return consideraciones, err
	}

	return consideraciones, nil
}
