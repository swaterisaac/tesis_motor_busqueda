package busquedas

import (
	"database/sql"
	"fmt"
	"tesis/conexion"
	"tesis/modelos"
	"tesis/query"

	elasticsearch "github.com/elastic/go-elasticsearch/v6"
)

/*
Código 200: Se encontró y se retornó la oferta
Código 404: No hay oferta con esa ID
Código 500: No se pudo recuperar la oferta
*/
func ObtenerOfertaPorId(db *sql.DB, id int) (modelos.OfertaTuristica, error, int) {
	queryOferta := fmt.Sprintf(
		"SELECT ot.id, ot.nombre, ot.fecha_inicio, ot.fecha_final, ot.precio, r.nombre, c.nombre, p.nombre "+
			"FROM ofertas_turisticas ot, comunas c, proveedores p, regiones r "+
			"WHERE ot.id = %d AND ot.id_comuna = c.id AND c.id_region = r.id AND p.id = ot.id_proveedor", id)
	var oferta modelos.OfertaTuristica
	err := db.QueryRow(queryOferta).Scan(&oferta.ID, &oferta.Nombre,
		&oferta.FechaInicio, &oferta.FechaFinal, &oferta.Precio, &oferta.Region, &oferta.Comuna, &oferta.Proveedor)
	if err == sql.ErrNoRows {
		return oferta, err, 404
	}
	if err != nil {
		return oferta, err, 500
	}
	return oferta, nil, 200
}

//Obtención de querys a elasticsearch
func queryRecomendacion(db *sql.DB, idUsuario int) (map[string]interface{}, error) {
	comportamiento, err := ObtenerComportamiento(db, idUsuario)
	if err != nil {
		return nil, err
	}
	queryElasticsearch := query.CrearQueryRecomendacion(comportamiento)
	return queryElasticsearch, nil
}

func queryNormal(db *sql.DB, idUsuario int, queryUsuario string) (map[string]interface{}, error) {
	comportamiento, err := ObtenerComportamiento(db, idUsuario)
	if err != nil {
		return nil, err
	}
	queryElasticsearch := query.CrearQuery(comportamiento, queryUsuario)
	return queryElasticsearch, nil
}

//Obtención de ofertas
func obtenerOfertasGeneral(db *sql.DB, es *elasticsearch.Client, idUsuario int, queryElasticsearch map[string]interface{}) ([]modelos.OfertaTuristica, error) {

	res, r, err := conexion.BuscarRecomendacion(es, queryElasticsearch)
	if err != nil {
		return nil, err
	}
	conexion.ObtenerRespuestaStatus(res, r)
	respuestas := conexion.CastearRespuesta(r)

	var ofertas []modelos.OfertaTuristica

	for _, respuesta := range respuestas {
		oferta, err, _ := ObtenerOfertaPorId(db, int(respuesta.IdEnDb))
		if err != nil {
			return ofertas, err
		}
		ofertas = append(ofertas, oferta)
	}
	return ofertas, nil
}

func ObtenerOfertasRecomendacion(db *sql.DB, es *elasticsearch.Client, idUsuario int) ([]modelos.OfertaTuristica, error) {
	queryElasticsearch, err := queryRecomendacion(db, idUsuario)
	if err != nil {
		return nil, err
	}
	ofertas, err := obtenerOfertasGeneral(db, es, idUsuario, queryElasticsearch)
	return ofertas, err
}

func ObtenerOfertasQuery(db *sql.DB, es *elasticsearch.Client, idUsuario int, queryUsuario string) ([]modelos.OfertaTuristica, error) {
	queryElasticsearch, err := queryNormal(db, idUsuario, queryUsuario)
	if err != nil {
		return nil, err
	}
	ofertas, err := obtenerOfertasGeneral(db, es, idUsuario, queryElasticsearch)
	return ofertas, err
}
