package modelos

type RespuestaElastic struct {
	Id              string
	IdEnDb          float64
	Score           float64
	FechaFinal      string
	FechaInicio     string
	Precio          float64
	Consideraciones []string
	Descriptor      string
}
