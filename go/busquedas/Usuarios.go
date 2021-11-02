package busquedas

import (
	"database/sql"
	"fmt"
	. "tesis/modelos"
)

//Obtener todos los usuarios de la base de datos
func ObtenerUsuarios(db *sql.DB) ([]Usuario, error) {
	rows, err := db.Query("SELECT * FROM usuarios")
	if err != nil {
		return nil, err
	}
	defer rows.Close()
	var usuarios []Usuario

	for rows.Next() {
		var usuario Usuario
		if err := rows.Scan(&usuario.ID, &usuario.Nombre, &usuario.Correo,
			&usuario.FechaNacimiento, &usuario.IdColumna); err != nil {
			return usuarios, err
		}
		usuarios = append(usuarios, usuario)
	}
	if err = rows.Err(); err != nil {
		return usuarios, err
	}
	return usuarios, nil
}

func ObtenerUbicacionUsuario(db *sql.DB, idUsuario int, canalContenidoRegion chan<- string, canalContenidoComuna chan<- string, canalError chan<- error) {
	query := fmt.Sprintf("SELECT r.nombre, c.nombre "+
		"FROM usuarios u, regiones r, comunas c "+
		"WHERE u.id = %d and c.id = u.id_comuna and r.id = c.id_region", idUsuario)
	rows, err := db.Query(query)
	if err != nil {
		canalContenidoComuna <- ""
		canalContenidoRegion <- ""
		canalError <- err
		return
	}
	defer rows.Close()
	comuna, region := "", ""
	for rows.Next() {
		if err := rows.Scan(&region, &comuna); err != nil {
			canalContenidoComuna <- comuna
			canalContenidoRegion <- region
			canalError <- err
			return
		}
	}
	if err = rows.Err(); err != nil {
		canalContenidoComuna <- comuna
		canalContenidoRegion <- region
		canalError <- err
		return
	}
	canalContenidoComuna <- comuna
	canalContenidoRegion <- region
	canalError <- nil
	fmt.Println("wi")
}

func ObtenerConsideracionesMedicasUsuario(db *sql.DB, idUsuario int, canalContenido chan<- []string, canalError chan<- error) {
	query := fmt.Sprintf("SELECT cm.nombre "+
		"FROM usuarios u, consideraciones_medicas cm , usuario_consideraciones uc "+
		"WHERE u.id = %d and uc.id_usuario = u.id and uc.id_consideracion = cm.id", idUsuario)
	rows, err := db.Query(query)
	if err != nil {
		canalContenido <- nil
		canalError <- err
		return
	}
	defer rows.Close()
	var consideraciones []string

	for rows.Next() {
		var consideracion string
		if err := rows.Scan(&consideracion); err != nil {
			canalContenido <- consideraciones
			canalError <- err
			return
		}
		consideraciones = append(consideraciones, consideracion)
	}

	if err := rows.Err(); err != nil {
		canalContenido <- consideraciones
		canalError <- err
		return
	}

	canalContenido <- consideraciones
	canalError <- nil
	fmt.Println("wi")
}
