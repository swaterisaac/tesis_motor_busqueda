package main

import (
	"database/sql"
	"fmt"
	"os"

	busq "tesis/busquedas"
	"tesis/modelos"

	"github.com/joho/godotenv"
	_ "github.com/lib/pq"
)

//Inicialización para cargar archivo .env (Variables de entorno)
func init() {
	err := godotenv.Load()
	if err != nil {
		panic(err)
	}
}

func ObtenerComportamiento(db *sql.DB, idUsuario int) modelos.Comportamiento {
	canalErrorHistorialBusqueda := make(chan error)
	canalErrorHistorialOferta := make(chan error)
	canalErrorHistorialRegion := make(chan error)
	canalErrorHistorialComuna := make(chan error)
	canalErrorUbicacion := make(chan error)
	canalErrorConsideraciones := make(chan error)

	canalContenidoHistorialBusqueda := make(chan []modelos.Historial)
	canalContenidoHistorialOferta := make(chan []modelos.Historial)
	canalContenidoHistorialRegion := make(chan []modelos.Historial)
	canalContenidoHistorialComuna := make(chan []modelos.Historial)
	canalContenidoRegion := make(chan string)
	canalContenidoComuna := make(chan string)
	canalContenidoConsideraciones := make(chan []string)

	go busq.ObtenerHistorialBusquedaUsuario(db, idUsuario, canalContenidoHistorialBusqueda, canalErrorHistorialBusqueda)
	go busq.ObtenerHistorialOfertasUsuario(db, idUsuario, canalContenidoHistorialOferta, canalErrorHistorialOferta)
	go busq.ObtenerHistorialRegionUsuario(db, idUsuario, canalContenidoHistorialRegion, canalErrorHistorialRegion)
	go busq.ObtenerHistorialComunaUsuario(db, idUsuario, canalContenidoHistorialComuna, canalErrorHistorialComuna)
	go busq.ObtenerUbicacionUsuario(db, idUsuario, canalContenidoRegion, canalContenidoComuna, canalErrorUbicacion)
	go busq.ObtenerConsideracionesMedicasUsuario(db, idUsuario, canalContenidoConsideraciones, canalErrorConsideraciones)
	//TODO: Mejor manejo de errores ya que con nil en un canal se queda esperando infinitamente
	/*
		if err := <-canalErrorConsideraciones; err != nil {
			panic(err)
		}
		if err := <-canalErrorHistorialBusqueda; err != nil {
			panic(err)
		}
		if err := <-canalErrorHistorialComuna; err != nil {
			panic(err)
		}
		if err := <-canalErrorHistorialOferta; err != nil {
			panic(err)
		}
		if err := <-canalErrorHistorialRegion; err != nil {
			panic(err)
		}
		if err := <-canalErrorUbicacion; err != nil {
			panic(err)
		}
	*/
	var comportamiento modelos.Comportamiento
	comportamiento.Comuna = <-canalContenidoComuna
	comportamiento.Region = <-canalContenidoRegion
	comportamiento.HistorialBusqueda = <-canalContenidoHistorialBusqueda
	comportamiento.HistorialOfertaTuristica = <-canalContenidoHistorialOferta
	comportamiento.ComunaHistorial = <-canalContenidoHistorialComuna
	comportamiento.RegionHistorial = <-canalContenidoHistorialRegion
	comportamiento.ConsideracionesMedicas = <-canalContenidoConsideraciones

	return comportamiento
}

func main() {
	//Ambiente de conexión de base de datos
	psqlInfo := fmt.Sprintf("host=%s port=%s user=%s "+
		"password=%s dbname=%s sslmode=disable",
		os.Getenv("PGDB_HOST"),
		os.Getenv("PGDB_PORT"),
		os.Getenv("PGDB_USER"),
		os.Getenv("PGDB_PASSWORD"),
		os.Getenv("PGDB_NAME"),
	)
	//--Conexión a la base de datos--//
	db, err := sql.Open("postgres", psqlInfo)
	if err != nil {
		panic(err)
	}
	defer db.Close()

	err = db.Ping()
	if err != nil {
		panic(err)
	}
	fmt.Println("Conectado!")
	///////////////////////////////////

	//usuarios, err := busq.obtenerUsuarios(db)
	//comuna, region, err := busq.ObtenerUbicacionUsuario(db, 40)
	//valores, err := busq.ObtenerConsideracionesMedicasUsuario(db, 2)
	//valores, err := busq.ObtenerHistorialBusquedaUsuario(db, 1)
	//valores, err := busq.ObtenerHistorialComunaUsuario(db, 3)
	//valores, err := busq.ObtenerHistorialRegionUsuario(db, 7)
	//valores, err := busq.ObtenerHistorialOfertasUsuario(db, 9)
	valores := ObtenerComportamiento(db, 8)
	if err != nil {
		panic(err)
	}
	fmt.Println(valores)
}
