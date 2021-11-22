package conexion

import (
	"bytes"
	"encoding/json"

	elasticsearch "github.com/elastic/go-elasticsearch/v6"
	"github.com/elastic/go-elasticsearch/v6/esapi"
)

func BuscarRecomendacion(es *elasticsearch.Client, query map[string]interface{}) (*esapi.Response, map[string]interface{}, error) {
	var buf bytes.Buffer
	var r map[string]interface{}
	if err := json.NewEncoder(&buf).Encode(query); err != nil {
		return nil, r, err
	}
	res, err := es.Search(
		es.Search.WithIndex("testlogstash"),
		es.Search.WithBody(&buf),
		es.Search.WithPretty(),
	)
	if err != nil {
		return nil, r, err
	}
	if err := json.NewDecoder(res.Body).Decode(&r); err != nil {
		return nil, r, err
	}
	return res, r, err
}
