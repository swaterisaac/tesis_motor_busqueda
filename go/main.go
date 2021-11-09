package main

import (
	"bytes"
	"database/sql"
	"encoding/json"
	"fmt"
	"log"
	"os"
	"tesis/busquedas"
	"tesis/query"

	elasticsearch "github.com/elastic/go-elasticsearch/v6"
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

	//fmt.Printf("%+v\n", valores)
	//castearComportamiento(valores)

	//elasticsearch

	es, _ := elasticsearch.NewDefaultClient()
	var buf bytes.Buffer
	var r map[string]interface{}

	comportamiento, err := busquedas.ObtenerComportamiento(db, 1)
	if err != nil {
		panic(err)
	}
	fmt.Printf("%+v\n", comportamiento)

	query := query.CrearQueryRecomendacion(comportamiento)
	if err := json.NewEncoder(&buf).Encode(query); err != nil {
		panic(err)
	}
	res, err := es.Search(
		es.Search.WithIndex("testlogstash"),
		es.Search.WithBody(&buf),
		es.Search.WithPretty(),
	)

	if err := json.NewDecoder(res.Body).Decode(&r); err != nil {
		log.Fatalf("Error parsing the response body: %s", err)
	}
	// Print the response status, number of results, and request duration.

	log.Printf(
		"[%s] %d hits; took: %dms",
		res.Status(),
		int(r["hits"].(map[string]interface{})["total"].(float64)),
		int(r["took"].(float64)),
	)

	for _, hit := range r["hits"].(map[string]interface{})["hits"].([]interface{}) {
		log.Printf(" * ID=%s, %s", hit.(map[string]interface{})["_id"], hit.(map[string]interface{})["_source"])
	}

}
