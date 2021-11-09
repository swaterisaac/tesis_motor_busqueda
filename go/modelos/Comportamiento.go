package modelos

import (
	"fmt"
	"strings"
)

type Historial struct {
	Valor      string
	Frecuencia int
}

type Comportamiento struct {
	ConsideracionesMedicas   []string
	Comuna                   string
	Region                   string
	ComunaHistorial          []Historial
	RegionHistorial          []Historial
	HistorialOfertaTuristica []Historial
	HistorialBusqueda        []Historial
}

func CastearUbicacionHistorial(comportamiento Comportamiento) string {
	comunaHistorial := ""
	for _, comuna := range comportamiento.ComunaHistorial {
		comunaHistorial += comuna.Valor + " "
	}

	regionHistorial := ""
	for _, region := range comportamiento.RegionHistorial {
		regionHistorial += region.Valor + " "
	}
	return comunaHistorial + " " + regionHistorial
}

func CastearConsideraciones(comportamiento Comportamiento) string {
	consideracionesMedicas := strings.Join(comportamiento.ConsideracionesMedicas, " ")
	return consideracionesMedicas
}

func CastearOfertaHistorial(comportamiento Comportamiento) string {
	ofertaHistorial := ""
	for _, oferta := range comportamiento.HistorialOfertaTuristica {
		ofertaHistorial += oferta.Valor + " "
	}
	return ofertaHistorial
}

func CastearBusquedaHistorial(comportamiento Comportamiento) string {
	busquedaHistorial := ""
	for _, busqueda := range comportamiento.HistorialBusqueda {
		busquedaHistorial += busqueda.Valor + " "
	}
	return busquedaHistorial
}

func CastearUbicacion(comportamiento Comportamiento) string {
	return comportamiento.Region + " " + comportamiento.Comuna
}

func ImprimirComportamiento(comportamiento Comportamiento) {
	fmt.Println("Consideraciones medicas: ", CastearConsideraciones(comportamiento))
	fmt.Printf("Historial ubicacion: %s \n", CastearUbicacionHistorial(comportamiento))
	fmt.Printf("Historial oferta: %s\n", CastearOfertaHistorial(comportamiento))
	fmt.Printf("Historial busqueda: %s\n", CastearBusquedaHistorial(comportamiento))
	fmt.Printf("Region y comuna: %s\n", CastearUbicacion(comportamiento))
}
