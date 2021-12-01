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

func ObtenerRecomendacionOfertas(db *sql.DB, es *elasticsearch.Client, idUsuario int) ([]modelos.OfertaTuristica, error) {

	comportamiento, err := ObtenerComportamiento(db, idUsuario)
	if err != nil {
		return nil, err
	}
	queryElasticsearch := query.CrearQueryRecomendacion(comportamiento)

	res, r, err := conexion.BuscarRecomendacion(es, queryElasticsearch)
	if err != nil {
		return nil, err
	}
	fmt.Printf("%+v\n\n%+v", res, r)
	conexion.ObtenerRespuestaStatus(res, r)
	respuestas := conexion.CastearRespuesta(r)

	var ofertas []modelos.OfertaTuristica

	for _, respuesta := range respuestas {
		oferta, err, _ := ObtenerOfertaPorId(db, int(respuesta.IdEnDb))
		fmt.Printf("Oferta: %+v\n\n", oferta)
		if err != nil {
			return ofertas, err
		}
		ofertas = append(ofertas, oferta)
		fmt.Printf("Ofertas: %+v\n\n", ofertas)
	}
	return ofertas, nil
}
