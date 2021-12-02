package modelos

type OfertaTuristica struct {
	ID          int    `json:"id"`
	Nombre      string `json:"nombre"`
	FechaInicio string `json:"fecha_inicio"`
	FechaFinal  string `json:"fecha_final"`
	Precio      int    `json:"precio"`
	Comuna      string `json:"comuna"`
	Region      string `json:"region"`
	Proveedor   string `json:"proveedor"`
}
