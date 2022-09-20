package beans;

import java.sql.Date;

public class Recibo {

    private int idRecibo;
    private int fkIdPersona;
    private Date fechaEntrega;

    public Recibo(int idRecibo, int fkIdPersona, Date fechaEntrega) {
        this.idRecibo = idRecibo;
        this.fkIdPersona = fkIdPersona;
        this.fechaEntrega = fechaEntrega;
    }

    public int getIdRecibo() {
        return idRecibo;
    }

    public void setIdRecibo(int idRecibo) {
        this.idRecibo = idRecibo;
    }

    public int getFkIdPersona() {
        return fkIdPersona;
    }

    public void setFkIdPersona(int fkIdPersona) {
        this.fkIdPersona = fkIdPersona;
    }

    public Date getFechaEntrega() {
        return fechaEntrega;
    }

    public void setFechaEntrega(Date fechaEntrega) {
        this.fechaEntrega = fechaEntrega;
    }

    @Override
    public String toString() {
        return "Recibo{" + "idRecibo=" + idRecibo + ", fkIdPersona=" + fkIdPersona + ", fechaEntrega=" + fechaEntrega + '}';
    }
}
