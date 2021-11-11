package query

import "tesis/modelos"

const puntajeQuery float32 = 0.8

func rescatarQuery(queryEntrada string) map[string]interface{} {
	query := map[string]interface{}{
		"match": map[string]interface{}{
			"descriptor": map[string]interface{}{
				"query": queryEntrada,
				"boost": puntajeQuery,
			},
		},
	}
	return query
}

func CrearQuery(comportamiento modelos.Comportamiento, queryEntrada string) map[string]interface{} {

	const reduccion float32 = 0.4
	puntajeBusquedasHistorialQ := puntajeBusquedasHistorial * reduccion
	puntajeConsideracionesQ := puntajeConsideraciones * reduccion
	puntajeOfertasHistorialQ := puntajeOfertasHistorial * reduccion
	puntajeUbicacionQ := puntajeUbicacion * reduccion
	puntajeUbicacionHistorialQ := puntajeUbicacionHistorial * reduccion

	clausulaShould := []interface{}{}
	consideraciones := rescatarConsideraciones(comportamiento, puntajeConsideracionesQ)
	for _, consideracion := range consideraciones {
		clausulaShould = append(clausulaShould, consideracion)
	}
	clausulaShould = append(clausulaShould, rescatarUbicacionHistorial(comportamiento, puntajeUbicacionHistorialQ))
	clausulaShould = append(clausulaShould, rescatarOfertasHistorial(comportamiento, puntajeOfertasHistorialQ))
	clausulaShould = append(clausulaShould, rescatarBusquedaHistorial(comportamiento, puntajeBusquedasHistorialQ))
	clausulaShould = append(clausulaShould, rescatarQuery(queryEntrada))
	query := map[string]interface{}{
		"query": map[string]interface{}{
			"bool": map[string]interface{}{
				"should": clausulaShould,

				"must_not": []interface{}{
					rescatarUbicacion(comportamiento, puntajeUbicacionQ),
				},
			},
		},
	}
	return query
}
