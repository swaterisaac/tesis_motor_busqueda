package query

import "tesis/modelos"

//Puntajes de cada campo del comportamiento
//Puntaje consideraciones medicas
const puntajeConsideraciones float32 = 0.35

//Puntaje de las ubicaciones del historial de las ofertas buscadas
const puntajeUbicacionHistorial float32 = 0.02

//Puntaje del historial de las ofertas turísticas
const puntajeOfertasHistorial float32 = 0.08

//Puntaje del historial de consultas hechas por el usuario
const puntajeBusquedasHistorial float32 = 0.02

//Puntaje NEGATIVO de la ubicacion del usuario
const puntajeUbicacion float32 = 0.1

func rescatarConsideraciones(comportamiento modelos.Comportamiento, puntaje float32) []map[string]interface{} {
	var consideraciones []map[string]interface{}
	for _, consideracion := range comportamiento.ConsideracionesMedicas {
		interfaz := map[string]interface{}{
			"match": map[string]interface{}{
				"consideraciones": map[string]interface{}{
					"query": consideracion,
					"boost": puntaje,
				},
			},
		}
		consideraciones = append(consideraciones, interfaz)
	}

	return consideraciones
}
func rescatarUbicacionHistorial(comportamiento modelos.Comportamiento, puntaje float32) map[string]interface{} {
	ubicacionHistorial := map[string]interface{}{
		"match": map[string]interface{}{
			"descriptor": map[string]interface{}{
				"query": modelos.CastearUbicacionHistorial(comportamiento),
				"boost": puntaje,
			},
		},
	}
	return ubicacionHistorial
}

func rescatarOfertasHistorial(comportamiento modelos.Comportamiento, puntaje float32) map[string]interface{} {
	ofertasHistorial := map[string]interface{}{
		"match": map[string]interface{}{
			"descriptor": map[string]interface{}{
				"query": modelos.CastearOfertaHistorial(comportamiento),
				"boost": puntaje,
			},
		},
	}
	return ofertasHistorial
}

func rescatarBusquedaHistorial(comportamiento modelos.Comportamiento, puntaje float32) map[string]interface{} {
	busquedaHistorial := map[string]interface{}{
		"match": map[string]interface{}{
			"descriptor": map[string]interface{}{
				"query": modelos.CastearBusquedaHistorial(comportamiento),
				"boost": puntaje,
			},
		},
	}
	return busquedaHistorial
}

func rescatarUbicacion(comportamiento modelos.Comportamiento, puntaje float32) map[string]interface{} {
	ubicacion := map[string]interface{}{
		"match": map[string]interface{}{
			"descriptor": map[string]interface{}{
				"query": modelos.CastearUbicacion(comportamiento),
				"boost": puntaje,
			},
		},
	}
	return ubicacion
}

func CrearQueryRecomendacion(comportamiento modelos.Comportamiento) map[string]interface{} {

	clausulaShould := []interface{}{}
	consideraciones := rescatarConsideraciones(comportamiento, puntajeConsideraciones)
	for _, consideracion := range consideraciones {
		clausulaShould = append(clausulaShould, consideracion)
	}
	clausulaShould = append(clausulaShould, rescatarUbicacionHistorial(comportamiento, puntajeUbicacionHistorial))
	clausulaShould = append(clausulaShould, rescatarOfertasHistorial(comportamiento, puntajeOfertasHistorial))
	clausulaShould = append(clausulaShould, rescatarBusquedaHistorial(comportamiento, puntajeBusquedasHistorial))
	query := map[string]interface{}{
		"query": map[string]interface{}{
			"bool": map[string]interface{}{
				"should": clausulaShould,

				"must_not": []interface{}{
					rescatarUbicacion(comportamiento, puntajeUbicacion),
				},
			},
		},
	}
	return query
}
