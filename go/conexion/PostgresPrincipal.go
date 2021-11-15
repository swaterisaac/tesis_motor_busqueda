package conexion

import (
	"database/sql"
	"fmt"
	"os"

	"github.com/joho/godotenv"
)

//Inicialización para cargar archivo .env (Variables de entorno)
func init() {
	err := godotenv.Load()
	if err != nil {
		panic(err)
	}
}

func ConexionDb() (*sql.DB, error) {
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
		return nil, err
	}

	err = db.Ping()
	if err != nil {
		return nil, err
	}

	return db, nil
}
