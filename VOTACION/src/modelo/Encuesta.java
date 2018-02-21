package modelo;

public class Encuesta {
	
	private int usabilidad;
	private int presentación;
	private int diseño;
	private int facilidad;
	private int seguridad;
	private int recursos;
	private int objetivos;
	private int creatividad;
	private int resolucion;
	private float total;
	private String nombreGrupo;
	private String comentarios;
	
	
	
	public Encuesta(int usabilidad, int presentación, int diseño, int facilidad, int seguridad, int recursos,
			int objetivos, int creatividad, int resolucion, String nombreGrupo,String comentarios, float total) {
		this.usabilidad = usabilidad;
		this.presentación = presentación;
		this.diseño = diseño;
		this.facilidad = facilidad;
		this.seguridad = seguridad;
		this.recursos = recursos;
		this.objetivos = objetivos;
		this.creatividad = creatividad;
		this.resolucion = resolucion;
		this.nombreGrupo = nombreGrupo;
		this.comentarios = comentarios;
		this.total = total;
	}
	
	
	

	public Encuesta( String nombreGrupo, float total, String comentarios) {
		super();
		this.total = total;
		this.nombreGrupo = nombreGrupo;
		this.comentarios = comentarios;
	}




	public int getUsabilidad() {
		return usabilidad;
	}
	public void setUsabilidad(int usabilidad) {
		this.usabilidad = usabilidad;
	}
	public int getPresentación() {
		return presentación;
	}
	public void setPresentación(int presentación) {
		this.presentación = presentación;
	}
	public int getDiseño() {
		return diseño;
	}
	public void setDiseño(int diseño) {
		this.diseño = diseño;
	}
	public int getFacilidad() {
		return facilidad;
	}
	public void setFacilidad(int facilidad) {
		this.facilidad = facilidad;
	}
	public int getSeguridad() {
		return seguridad;
	}
	public void setSeguridad(int seguridad) {
		this.seguridad = seguridad;
	}
	public int getRecursos() {
		return recursos;
	}
	public void setRecursos(int recursos) {
		this.recursos = recursos;
	}
	public int getObjetivos() {
		return objetivos;
	}
	public void setObjetivos(int objetivos) {
		this.objetivos = objetivos;
	}
	public int getCreatividad() {
		return creatividad;
	}
	public void setCreatividad(int creatividad) {
		this.creatividad = creatividad;
	}
	public int getResolucion() {
		return resolucion;
	}
	
	public float getTotal() {
		return total;
	}
	public void setTotal(float total) {
		this.total = total;
	}
	public String getNombreGrupo() {
		return nombreGrupo;
	}
	public void setNombreGrupo(String nombreGrupo) {
		this.nombreGrupo = nombreGrupo;
	}
	
	public String getComentarios() {
		return comentarios;
	}
	public void setComentarios(String comentarios) {
		this.comentarios = comentarios;
	}
	
	

}
