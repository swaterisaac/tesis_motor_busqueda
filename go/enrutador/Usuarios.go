package enrutador

import (
	"database/sql"
	"fmt"
	"net/http"
	"tesis/busquedas"

	"github.com/gin-gonic/gin"
)

func ObtenerUsuarioPorCorreo(c *gin.Context, db *sql.DB) {
	correo := c.Query("correo")

	if correo == "" {
		c.JSON(http.StatusBadRequest, gin.H{
			"msg": "No se ha ingresado correo",
		})
		return
	}

	usuario, err, codigo := busquedas.ObtenerUsuarioPorCorreo(db, correo)

	if codigo == http.StatusNotFound {
		c.JSON(http.StatusNoContent, gin.H{
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
	c.JSON(http.StatusOK, usuario)
}

func CrearUsuario(c *gin.Context, db *sql.DB) {
	nombre := c.PostForm("nombre")
	consideraciones := c.PostForm("consideraciones")

	fmt.Println("AQUI: ", nombre, consideraciones)
	c.JSON(http.StatusOK, gin.H{
		"msg": "nada",
	})
}
