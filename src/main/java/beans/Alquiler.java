
package beans;

import java.sql.Date;


public class Alquiler {
    private int id;
    private String username;
    private Date fecha;
    private boolean novedad;
    private String modelo;

    public Alquiler(int id, String username, Date fecha, boolean novedad, String modelo) {
        this.id = id;
        this.username = username;
        this.fecha = fecha;
        this.novedad = novedad;
        this.modelo = modelo;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public boolean isNovedad() {
        return novedad;
    }

    public void setNovedad(boolean novedad) {
        this.novedad = novedad;
    }

    public String getGenero() {
        return modelo;
    }

    public void setGenero(String modelo) {
        this.modelo = modelo;
    }

    @Override
    public String toString() {
        return "Alquiler{" + "id=" + id + ", username=" + username + ", fecha=" + fecha + ", novedad=" + novedad + ", modelo=" + modelo + '}';
    }
    
    
    
    
    
}
