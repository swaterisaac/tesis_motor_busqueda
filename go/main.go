package main

import (
	"fmt"
	"tesis/busquedas"
	"tesis/conexion"
	"tesis/query"

	elasticsearch "github.com/elastic/go-elasticsearch/v6"
	_ "github.com/lib/pq"
)

func main() {

	db, err := conexion.ConexionDb()
	if err != nil {
		panic(err)
	}
	defer db.Close()

	//elasticsearch

	es, _ := elasticsearch.NewDefaultClient()
	var r map[string]interface{}
	idUsuario := 1
	comportamiento, err := busquedas.ObtenerComportamiento(db, idUsuario)
	if err != nil {
		panic(err)
	}
	query := query.CrearQueryRecomendacion(comportamiento)
	res, r, err := conexion.BuscarRecomendacion(es, query)
	status := conexion.ObtenerRespuestaStatus(res, r)
	respuestas := conexion.CastearRespuesta(r)
	fmt.Printf("%+v\n", comportamiento)
	fmt.Printf("%+v\n", status)
	fmt.Printf("%+v\n", respuestas)

}
