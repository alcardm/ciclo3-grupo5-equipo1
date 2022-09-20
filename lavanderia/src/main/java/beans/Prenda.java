package beans;

public class Prenda {

    private int idPrenda;
    private String descripcion;

    public Prenda(int idPrenda, String descripcion) {
        this.idPrenda = idPrenda;
        this.descripcion = descripcion;
    }

    public int getIdPrenda() {
        return idPrenda;
    }

    public void setIdPrenda(int idPrenda) {
        this.idPrenda = idPrenda;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    @Override
    public String toString() {
        return "Prenda{" + "idPrenda=" + idPrenda + ", descripcion=" + descripcion + '}';
    }

}
