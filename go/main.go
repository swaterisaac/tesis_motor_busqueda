package main

import (
	"fmt"
	"tesis/busquedas"
	"tesis/conexion"

	elasticsearch "github.com/elastic/go-elasticsearch/v6"
	_ "github.com/lib/pq"
)

func main() {
	//Conexión base de datos aplicación
	db, err := conexion.ConexionDb(conexion.ObtenerEntornoConexion())
	if err != nil {
		panic(err)
	}
	defer db.Close()

	//Conexión base de datos de Scraping Prueba.
	/*
		dbScrappingPrueba, err := conexion.ConexionDb(conexion.ObtenerConexionScrappingPrueba())
		if err != nil {
			panic(err)
		}
		defer dbScrappingPrueba.Close()
	*/

	//Listener para scrapping
	//conexion.ListenerGeneral(db, dbScrappingPrueba, conexion.QueryScrappingPrueba, conexion.TraductorScrappingGeneral, "prueba")

	//elasticsearch

	es, err := elasticsearch.NewDefaultClient()
	if err != nil {
		panic(err)
	}

	ofertas, err := busquedas.ObtenerRecomendacionOfertas(db, es, 4)
	if err != nil {
		panic(err)
	}
	fmt.Printf("%+v\n", ofertas)

}
