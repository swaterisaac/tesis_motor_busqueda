package modelos

/*
Struct que representa a un usuario de la base de datos.

ID: int Con el id del usuario
Nombre: string con el nombre del usuario
Correo: string Con el correo del usuario
FechaNacimiento: string Con la fecha de nacimiento del usuario
IdComuna: int Con el id de la comuna a la que pertenece el usuario
*/
type Usuario struct {
	ID              int
	Nombre          string
	Correo          string
	FechaNacimiento string
	IdComuna        int
}
