package busquedas

import (
	"database/sql"
	"sync"
	"tesis/modelos"
)

func ObtenerComportamiento(db *sql.DB, idUsuario int) (modelos.Comportamiento, error) {
	canalError := make(chan error)

	canalContenidoHistorialBusqueda := make(chan []modelos.Historial)
	canalContenidoHistorialOferta := make(chan []modelos.Historial)
	canalContenidoHistorialRegion := make(chan []modelos.Historial)
	canalContenidoHistorialComuna := make(chan []modelos.Historial)
	canalContenidoRegion := make(chan string)
	canalContenidoComuna := make(chan string)
	canalContenidoConsideraciones := make(chan []string)

	var wg sync.WaitGroup
	wg.Add(6)

	go func() {
		defer wg.Done()
		historialBusqueda, err := ObtenerHistorialBusquedaUsuario(db, idUsuario)
		if err != nil {
			canalError <- err
		}
		canalContenidoHistorialBusqueda <- historialBusqueda
	}()
	go func() {
		defer wg.Done()
		historialOfertas, err := ObtenerHistorialOfertasUsuario(db, idUsuario)
		if err != nil {
			canalError <- err
		}
		canalContenidoHistorialOferta <- historialOfertas
	}()
	go func() {
		defer wg.Done()
		historialRegion, err := ObtenerHistorialRegionUsuario(db, idUsuario)
		if err != nil {
			canalError <- err
		}
		canalContenidoHistorialRegion <- historialRegion
	}()
	go func() {
		defer wg.Done()
		historialComuna, err := ObtenerHistorialComunaUsuario(db, idUsuario)
		if err != nil {
			canalError <- err
		}
		canalContenidoHistorialComuna <- historialComuna
	}()
	go func() {
		defer wg.Done()
		comuna, region, err := ObtenerUbicacionUsuario(db, idUsuario)
		if err != nil {
			canalError <- err
		}
		canalContenidoComuna <- comuna
		canalContenidoRegion <- region
	}()
	go func() {
		defer wg.Done()
		consideraciones, err := ObtenerConsideracionesMedicasUsuario(db, idUsuario)
		if err != nil {
			canalError <- err
		}
		canalContenidoConsideraciones <- consideraciones
	}()

	//wg.Wait()
	var comportamiento modelos.Comportamiento
	close(canalError)
	//Manejo de errores
	for err := range canalError {
		if err != nil {
			return comportamiento, err
		}
	}

	comportamiento.Comuna = <-canalContenidoComuna
	comportamiento.Region = <-canalContenidoRegion
	comportamiento.HistorialBusqueda = <-canalContenidoHistorialBusqueda
	comportamiento.HistorialOfertaTuristica = <-canalContenidoHistorialOferta
	comportamiento.ComunaHistorial = <-canalContenidoHistorialComuna
	comportamiento.RegionHistorial = <-canalContenidoHistorialRegion
	comportamiento.ConsideracionesMedicas = <-canalContenidoConsideraciones
	return comportamiento, nil

}
