package modelos

type Historial struct {
	Valor      string
	Frecuencia int
}

type Comportamiento struct {
	ConsideracionesMedicas   []string
	Comuna                   string
	Region                   string
	ComunaHistorial          []Historial
	RegionHistorial          []Historial
	HistorialOfertaTuristica []Historial
	HistorialBusqueda        []Historial
}
