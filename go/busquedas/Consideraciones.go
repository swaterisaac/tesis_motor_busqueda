package busquedas

import (
	"database/sql"
	"fmt"
	"net/http"
	"tesis/modelos"
)

func ObtenerConsideracionesMedicas(db *sql.DB) ([]modelos.Region, error, int) {
	query := fmt.Sprintf("SELECT id, nombre FROM consideraciones_medicas cm")
	rows, err := db.Query(query)
	defer rows.Close()
	if err == sql.ErrNoRows {
		return nil, err, http.StatusNotFound
	}
	if err != nil {
		return nil, err, http.StatusInternalServerError
	}
	var consideraciones []modelos.Region
	for rows.Next() {
		var consideracion modelos.Region
		if err := rows.Scan(&consideracion.ID, &consideracion.Nombre); err != nil {
			return consideraciones, err, http.StatusInternalServerError
		}
		consideraciones = append(consideraciones, consideracion)
	}
	return consideraciones, nil, http.StatusOK
}
