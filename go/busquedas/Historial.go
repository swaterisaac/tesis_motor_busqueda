package busquedas

import (
	"database/sql"
	"fmt"
	"net/http"
	"tesis/modelos"
)

//Límite máximo a guardar de búsquedas por usuario:
const limiteBusquedas = 100

/*
Entradas:
db: *sql.DB sacado de la librería database/sql. Manejador de conexión a bases de datos mysql
(pgsql en este caso)
idUsuario: int que indica el id del usuario a sacar los datos.

Salidas:
[]modelos.Historial: sacado de un struct en el paquete modelos que representa el historial de alguna
tabla en la base de datos. Esto quiere decir el historial de un usuario de una oferta, una región,
comuna, etc.
error: Error en caso de que algo salga mal

Descripción: Obtiene todo el historial de búsqueda de un usuario. Esto quiere decir todas las querys
o consultas que haya puesto en la aplicación.
*/
func ObtenerHistorialBusquedaUsuario(db *sql.DB, idUsuario int) ([]modelos.Historial, error) {
	query := fmt.Sprintf("SELECT hb.consulta, hb.frecuencia "+
		"FROM usuarios u, historial_busquedas hb "+
		"WHERE u.id = %d and hb.id_usuario = u.id", idUsuario)
	rows, err := db.Query(query)
	if err != nil {
		return nil, err
	}

	defer rows.Close()
	var historiales []modelos.Historial
	for rows.Next() {
		var historial modelos.Historial
		if err := rows.Scan(&historial.Valor, &historial.Frecuencia); err != nil {
			return historiales, err
		}
		historiales = append(historiales, historial)

	}
	if err := rows.Err(); err != nil {
		return historiales, err
	}
	return historiales, nil
}

/*
Entradas:
db: *sql.DB sacado de la librería database/sql. Manejador de conexión a bases de datos mysql
(pgsql en este caso)
idUsuario: int que indica el id del usuario a sacar los datos.

Salidas:
[]modelos.Historial: sacado de un struct en el paquete modelos que representa el historial de alguna
tabla en la base de datos. Esto quiere decir el historial de un usuario de una oferta, una región,
comuna, etc.
error: Error en caso de que algo salga mal

Descripción: Recopila el historial de las comunas de las ofertas turísticas que ha buscado un
usuario específico
*/
func ObtenerHistorialComunaUsuario(db *sql.DB, idUsuario int, topComuna int) ([]modelos.Historial, error) {
	query := fmt.Sprintf("SELECT c.nombre, hc.frecuencia "+
		"FROM usuarios u, historial_comunas hc, comunas c "+
		"WHERE u.id = %d and hc.id_usuario = u.id and c.id = hc.id_comuna "+
		"ORDER BY hc.frecuencia DESC LIMIT %d", idUsuario, topComuna)
	rows, err := db.Query(query)
	if err != nil {
		return nil, err
	}
	defer rows.Close()
	var historiales []modelos.Historial

	for rows.Next() {
		var historial modelos.Historial
		if err := rows.Scan(&historial.Valor, &historial.Frecuencia); err != nil {
			return historiales, err
		}
		historiales = append(historiales, historial)
	}

	if err := rows.Err(); err != nil {
		return historiales, err
	}

	return historiales, nil
}

/*
Entradas:
db: *sql.DB sacado de la librería database/sql. Manejador de conexión a bases de datos mysql
(pgsql en este caso)
idUsuario: int que indica el id del usuario a sacar los datos.

Salidas:
[]modelos.Historial: sacado de un struct en el paquete modelos que representa el historial de alguna
tabla en la base de datos. Esto quiere decir el historial de un usuario de una oferta, una región,
comuna, etc.
error: Error en caso de que algo salga mal

Descripción: Recopila el historial de las regiones de las ofertas turísticas que ha buscado un
usuario específico.
*/
func ObtenerHistorialRegionUsuario(db *sql.DB, idUsuario int, topRegion int) ([]modelos.Historial, error) {
	query := fmt.Sprintf("SELECT r.nombre, hr.frecuencia "+
		"FROM usuarios u, historial_regiones hr, regiones r "+
		"WHERE u.id = %d and hr.id_usuario = u.id and r.id = hr.id_region "+
		"ORDER BY hr.frecuencia DESC LIMIT %d", idUsuario, topRegion)
	rows, err := db.Query(query)
	if err != nil {
		return nil, err
	}
	defer rows.Close()
	var historiales []modelos.Historial

	for rows.Next() {
		var historial modelos.Historial
		if err := rows.Scan(&historial.Valor, &historial.Frecuencia); err != nil {
			return historiales, err
		}
		historiales = append(historiales, historial)
	}

	if err := rows.Err(); err != nil {
		return historiales, err
	}

	return historiales, nil
}

/*
Entradas:
db: *sql.DB sacado de la librería database/sql. Manejador de conexión a bases de datos mysql
(pgsql en este caso)
idUsuario: int que indica el id del usuario a sacar los datos.

Salidas:
[]modelos.Historial: sacado de un struct en el paquete modelos que representa el historial de alguna
tabla en la base de datos. Esto quiere decir el historial de un usuario de una oferta, una región,
comuna, etc.
error: Error en caso de que algo salga mal

Descripción: Obtiene el historial de todas las ofertas turísticas que ha buscado un
usuario específico
*/
func ObtenerHistorialOfertasUsuario(db *sql.DB, idUsuario int, topOfertas int) ([]modelos.Historial, error) {
	query := fmt.Sprintf("SELECT ot.nombre, ho.frecuencia "+
		"FROM usuarios u, historial_ofertas ho, ofertas_turisticas ot "+
		"WHERE u.id = %d and ho.id_usuario = u.id and ot.id = ho.id_oferta "+
		"ORDER BY ho.frecuencia DESC LIMIT %d", idUsuario, topOfertas)
	rows, err := db.Query(query)
	if err != nil {
		return nil, err
	}
	defer rows.Close()
	var historiales []modelos.Historial

	for rows.Next() {
		var historial modelos.Historial
		if err := rows.Scan(&historial.Valor, &historial.Frecuencia); err != nil {
			return historiales, err
		}
		historiales = append(historiales, historial)
	}

	if err := rows.Err(); err != nil {
		return historiales, err
	}

	return historiales, nil
}

func CrearHistorialBusqueda(db *sql.DB, idUsuario int, busqueda string) int {
	queryContar := fmt.Sprintf("SELECT COUNT(*) "+
		"FROM usuarios u, historial_busquedas hb "+
		"WHERE u.id = %d AND hb.id_usuario = u.id", idUsuario)
	var cantidadBusqueda int
	err := db.QueryRow(queryContar).Scan(&cantidadBusqueda)

	if err != nil {
		return http.StatusInternalServerError
	}

	if cantidadBusqueda >= limiteBusquedas {
		var idBusquedaAntigua int
		queryBusquedaAntigua := fmt.Sprintf("SELECT hb.id "+
			"FROM usuarios u, historial_busquedas hb "+
			"WHERE u.id = %d AND u.id = hb.id_usuario "+
			"ORDER BY hb.id ASC LIMIT 1", idUsuario)
		if err := db.QueryRow(queryBusquedaAntigua).Scan(&idBusquedaAntigua); err != nil {
			return http.StatusInternalServerError
		}

		queryBorrarBusqueda := fmt.Sprintf("DELETE FROM historial_busquedas hb WHERE hb.id = %d", idBusquedaAntigua)
		if err = db.QueryRow(queryBorrarBusqueda).Err(); err != nil {
			return http.StatusInternalServerError
		}
	}

	queryCrearBusqueda := fmt.Sprintf("INSERT INTO historial_busquedas (consulta, frecuencia, id_usuario) "+
		"VALUES ('%s', 1, %d)", busqueda, idUsuario)

	if err := db.QueryRow(queryCrearBusqueda).Err(); err != nil {
		return http.StatusInternalServerError
	}
	return http.StatusCreated
}
