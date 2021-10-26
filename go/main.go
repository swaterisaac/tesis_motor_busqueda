package main

import (
	"database/sql"
	"fmt"

	_ "github.com/lib/pq"
)

const (
	host     = "localhost"
	port     = 5432
	user     = "postgres"
	password = "admin"
	dbname   = "postgres"
)

var db *sql.DB

type Usuario struct {
	ID              int
	Nombre          string
	Correo          string
	FechaNacimiento string
	IdColumna       int
}

//NO funciona la conexión del db
func obtenerUsuarios() ([]Usuario, error) {
	rows, err := db.Query("SELECT * FROM usuarios")
	if err != nil {
		return nil, err
	}
	defer rows.Close()
	var usuarios []Usuario

	for rows.Next() {
		var usuario Usuario
		if err := rows.Scan(&usuario.ID, &usuario.Nombre, &usuario.Correo,
			&usuario.FechaNacimiento, &usuario.IdColumna); err != nil {
			return usuarios, err
		}
		usuarios = append(usuarios, usuario)
	}
	if err = rows.Err(); err != nil {
		return usuarios, err
	}
	return usuarios, nil
}

func main() {
	psqlInfo := fmt.Sprintf("host=%s port=%d user=%s "+
		"password=%s dbname=%s sslmode=disable",
		host, port, user, password, dbname)
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
	//usuarios, err := obtenerUsuarios()
	rows, err := db.Query("SELECT * FROM usuarios")
	if err != nil {
		panic(err)
	}
	defer rows.Close()
	var usuarios []Usuario

	for rows.Next() {
		var usuario Usuario
		if err := rows.Scan(&usuario.ID, &usuario.Nombre, &usuario.Correo,
			&usuario.FechaNacimiento, &usuario.IdColumna); err != nil {
			panic(err)
		}
		usuarios = append(usuarios, usuario)
	}
	if err = rows.Err(); err != nil {
		fmt.Println(usuarios)
		panic(err)
	}

	fmt.Println(usuarios)
}
