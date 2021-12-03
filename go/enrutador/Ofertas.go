package enrutador

import (
	"database/sql"
	"net/http"
	"strconv"
	"tesis/busquedas"

	"github.com/elastic/go-elasticsearch/v6"
	"github.com/gin-gonic/gin"
)

func ObtenerOfertasUsuario(c *gin.Context, db *sql.DB, es *elasticsearch.Client) {
	correo := c.Query("correo")
	tamanio := c.DefaultQuery("tamanio", "10")
	pagina := c.DefaultQuery("pagina", "1")

	tamanioNum, errTamanio := strconv.Atoi(tamanio)
	paginaNum, errPagina := strconv.Atoi(pagina)

	if errTamanio != nil || errPagina != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"msg": "Tamaño y pagina deben ser valores numéricos",
		})
		return
	}
	if tamanioNum <= 0 || paginaNum <= 0 || tamanioNum > 1000 || paginaNum > 1000 {
		c.JSON(http.StatusBadRequest, gin.H{
			"msg": "Tamaño y pagina deben ser positivos distintos de 0 y menores a 1000",
		})
		return
	}
	if correo == "" {
		c.JSON(http.StatusBadRequest, gin.H{
			"msg": "No se ha ingresado correo",
		})
		return
	}
	id, err, codigo := busquedas.ObtenerIdUsarioPorCorreo(db, correo)

	if codigo == http.StatusNotFound {
		c.JSON(http.StatusNotFound, gin.H{
			"msg": "El correo no está registrado",
		})
		return
	}
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{
			"msg":   "Error de servidor",
			"error": err,
		})
		return
	}
	ofertas, err := busquedas.ObtenerOfertasRecomendacion(db, es, id, tamanioNum, paginaNum)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{
			"error": err,
		})
		return
	}
	if len(ofertas) == 0 {
		c.JSON(http.StatusNoContent, gin.H{
			"error": "No hay ofertas",
		})
		return
	}
	c.JSON(http.StatusOK, ofertas)

}
