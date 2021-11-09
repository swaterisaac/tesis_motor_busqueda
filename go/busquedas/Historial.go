package busquedas

import (
	"database/sql"
	"fmt"
	"tesis/modelos"
)

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

func ObtenerHistorialComunaUsuario(db *sql.DB, idUsuario int) ([]modelos.Historial, error) {
	query := fmt.Sprintf("SELECT c.nombre, hc.frecuencia "+
		"FROM usuarios u, historial_comunas hc, comunas c "+
		"WHERE u.id = %d and hc.id_usuario = u.id and c.id = hc.id_comuna ", idUsuario)
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

func ObtenerHistorialRegionUsuario(db *sql.DB, idUsuario int) ([]modelos.Historial, error) {
	query := fmt.Sprintf("SELECT r.nombre, hr.frecuencia "+
		"FROM usuarios u, historial_regiones hr, regiones r "+
		"WHERE u.id = %d and hr.id_usuario = u.id and r.id = hr.id_region", idUsuario)
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

func ObtenerHistorialOfertasUsuario(db *sql.DB, idUsuario int) ([]modelos.Historial, error) {
	query := fmt.Sprintf("SELECT ot.nombre, ho.frecuencia "+
		"FROM usuarios u, historial_ofertas ho, ofertas_turisticas ot "+
		"WHERE u.id = %d and ho.id_usuario = u.id and ot.id = ho.id_oferta", idUsuario)
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
