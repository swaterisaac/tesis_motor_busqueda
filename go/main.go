package main

import (
	"fmt"
	"log"
	"tesis/busquedas"
	"tesis/conexion"
	"tesis/modelos"
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

	comportamiento, err := busquedas.ObtenerComportamiento(db, 1)
	if err != nil {
		panic(err)
	}
	fmt.Printf("%+v\n", comportamiento)
	query := query.CrearQueryRecomendacion(comportamiento)

	res, r, err := conexion.BuscarRecomendacion(es, query)
	// Print the response status, number of results, and request duration.
	log.Printf(
		"[%s] %d hits; took: %dms",
		res.Status(),
		int(r["hits"].(map[string]interface{})["total"].(float64)),
		int(r["took"].(float64)),
	)
	var respuestas []modelos.RespuestaElastic
	for _, hit := range r["hits"].(map[string]interface{})["hits"].([]interface{}) {
		var respuesta modelos.RespuestaElastic
		respuesta.Id = fmt.Sprintf("%v", hit.(map[string]interface{})["_id"])
		respuesta.IdEnDb = hit.(map[string]interface{})["_source"].(map[string]interface{})["idEnDb"].(float64)
		respuesta.Descriptor = hit.(map[string]interface{})["_source"].(map[string]interface{})["descriptor"].(string)
		respuesta.FechaFinal = hit.(map[string]interface{})["_source"].(map[string]interface{})["fecha_final"].(string)
		respuesta.FechaInicio = hit.(map[string]interface{})["_source"].(map[string]interface{})["fecha_inicio"].(string)
		respuesta.Precio = hit.(map[string]interface{})["_source"].(map[string]interface{})["precio"].(float64)
		respuesta.Score = hit.(map[string]interface{})["_score"].(float64)
		consideraciones := hit.(map[string]interface{})["_source"].(map[string]interface{})["consideraciones"].([]interface{})
		//Castear arreglo de []interfaz{} a []string
		respuesta.Consideraciones = make([]string, len(consideraciones))
		for i := range consideraciones {
			respuesta.Consideraciones[i] = consideraciones[i].(string)
		}

		fmt.Printf("%+v\n", respuesta)
		respuestas = append(respuestas, respuesta)

		//log.Printf(" * ID=%s, %s", hit.(map[string]interface{})["_id"], hit.(map[string]interface{})["_source"].(map[string]interface{})["descriptor"])
	}

}
