package enrutador

import (
	"database/sql"
	"net/http"
	"tesis/busquedas"

	"github.com/gin-gonic/gin"
)

func ObtenerConsideracionesMedicas(c *gin.Context, db *sql.DB) {
	consideraciones, err, codigo := busquedas.ObtenerConsideracionesMedicas(db)

	if codigo == http.StatusNotFound {
		c.JSON(http.StatusNoContent, gin.H{
			"error": "No hay consideraciones médicas",
		})
		return
	}

	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{
			"error": "Hay un error con el servidor",
		})
		return
	}
	c.JSON(http.StatusOK, consideraciones)
}
