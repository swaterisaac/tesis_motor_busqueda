package main

import (
	"tesis/busquedas"
	"tesis/conexion"

	elasticsearch "github.com/elastic/go-elasticsearch/v6"
	"github.com/gin-gonic/gin"
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

	router := gin.Default()
	router.GET("/ofertas", func(c *gin.Context) {
		ofertas, err := busquedas.ObtenerOfertasRecomendacion(db, es, 12)
		if err != nil {
			c.JSON(500, gin.H{
				"error": err,
			})
		}

		c.JSON(200, ofertas)
	})
	router.Run(":3632")
}
