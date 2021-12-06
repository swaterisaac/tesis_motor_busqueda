package main

import (
	"tesis/conexion"
	"tesis/enrutador"

	elasticsearch "github.com/elastic/go-elasticsearch/v6"
	cors "github.com/gin-contrib/cors"
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
	router.Use(cors.New(cors.Config{
		AllowOrigins:     []string{"*"},
		AllowMethods:     []string{"*"},
		AllowHeaders:     []string{"*"},
		ExposeHeaders:    []string{"Content-Length"},
		AllowCredentials: true,
		AllowOriginFunc: func(origin string) bool {
			return origin == "https://github.com"
		},
	}))
	router.GET("/ofertas", func(c *gin.Context) {
		enrutador.ObtenerOfertasUsuario(c, db, es)
	})
	router.GET("/ofertasQuery", func(c *gin.Context) {
		enrutador.ObtenerOfertasQuery(c, db, es)
	})
	router.GET("/usuarioPorCorreo", func(c *gin.Context) {
		enrutador.ObtenerUsuarioPorCorreo(c, db)
	})
	router.GET("/obtenerRegiones", func(c *gin.Context) {
		enrutador.ObtenerRegiones(c, db)
	})
	router.GET("/obtenerComunas", func(c *gin.Context) {
		enrutador.ObtenerComunasPorRegion(c, db)
	})
	router.GET("/obtenerConsideraciones", func(c *gin.Context) {
		enrutador.ObtenerConsideracionesMedicas(c, db)
	})
	router.POST("/crearUsuario", func(c *gin.Context) {
		enrutador.CrearUsuario(c, db)
	})
	router.Run(":3632")
}
