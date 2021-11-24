package main

import (
	"tesis/conexion"

	_ "github.com/lib/pq"
)

func main() {
	db, err := conexion.ConexionDb(conexion.ObtenerEntornoConexion())
	if err != nil {
		panic(err)
	}
	defer db.Close()

	dbScrappingPrueba, err := conexion.ConexionDb(conexion.ObtenerConexionScrappingPrueba())
	if err != nil {
		panic(err)
	}
	defer dbScrappingPrueba.Close()

	conexion.ListenerGeneral(db, dbScrappingPrueba, conexion.QueryScrappingPrueba, conexion.TraductorScrappingGeneral, "prueba")
	//elasticsearch
	/*
		es, err := elasticsearch.NewDefaultClient()
		if err != nil {
			panic(err)
		}

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
	*/
}
