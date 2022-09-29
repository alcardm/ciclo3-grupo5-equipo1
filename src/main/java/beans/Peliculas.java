
package beans;


public class Peliculas {
    private int id; 
    private String marca;
    private String modelo;
    private int pesokg;
    private int disponibilidad;
    private boolean novedad;

    public Peliculas(int id, String marca, String modelo, int pesokg, int disponibilidad, boolean novedad) {
        this.id = id;
        this.marca = marca;
        this.modelo = modelo;
        this.pesokg = pesokg;
        this.disponibilidad = disponibilidad;
        this.novedad = novedad;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public int getPesokg() {
        return pesokg;
    }

    public void setPesokg(int pesokg) {
        this.pesokg = pesokg;
    }

    public int getDisponibilidad() {
        return disponibilidad;
    }

    public void setDisponibilidad(int disponibilidad) {
        this.disponibilidad = disponibilidad;
    }

    public boolean isNovedad() {
        return novedad;
    }

    public void setNovedad(boolean novedad) {
        this.novedad = novedad;
    }

    @Override
    public String toString() {
        return "Lavadora{" + "id=" + id + ", marca=" + marca + ", modelo=" + modelo + ", pesokg=" + pesokg + ", disponibilidad=" + disponibilidad + ", novedad=" + novedad + '}';
    }

    
}
