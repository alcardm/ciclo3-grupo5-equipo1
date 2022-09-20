package beans;

public class ReciboPrenda {

    private int fkIdRecibo;
    private int fkIdPrenda;
    private int cantidad;
    private String estado;
    private String observacion;

    public ReciboPrenda(int fkIdRecibo, int fkIdPrenda, int cantidad, String estado, String observacion) {
        this.fkIdRecibo = fkIdRecibo;
        this.fkIdPrenda = fkIdPrenda;
        this.cantidad = cantidad;
        this.estado = estado;
        this.observacion = observacion;
    }

    public int getFkIdRecibo() {
        return fkIdRecibo;
    }

    public void setFkIdRecibo(int fkIdRecibo) {
        this.fkIdRecibo = fkIdRecibo;
    }

    public int getFkIdPrenda() {
        return fkIdPrenda;
    }

    public void setFkIdPrenda(int fkIdPrenda) {
        this.fkIdPrenda = fkIdPrenda;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getObservacion() {
        return observacion;
    }

    public void setObservacion(String observacion) {
        this.observacion = observacion;
    }

    @Override
    public String toString() {
        return "ReciboPrenda{" + "fkIdRecibo=" + fkIdRecibo + ", fkIdPrenda=" + fkIdPrenda + ", cantidad=" + cantidad + ", estado=" + estado + ", observacion=" + observacion + '}';
    }

}
