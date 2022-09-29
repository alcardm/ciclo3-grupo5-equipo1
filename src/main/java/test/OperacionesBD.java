
package test;
import beans.Peliculas;
import connection.DBConnection;
import java.sql.ResultSet;
import java.sql.Statement;


public class OperacionesBD {
    
    public static void main(String[]args){
        actualizarPelicula(1,"terror");
        listarPelicula();
        
        
    }
    
    public static void actualizarPelicula(int id, String modelo){
      DBConnection con = new DBConnection();
      String sql = "UPDATE lavadora SET modelo = '" + modelo + "'WHERE id =" + id;
        try {
           Statement st = con.getConnection().createStatement();
           st.executeUpdate(sql);
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        finally{
            con.desconectar();
            
        }
    }
    public static void listarPelicula(){
      DBConnection con = new DBConnection();
      String sql = "SELECT * FROM lavadora";
        try {
           Statement st = con.getConnection().createStatement();
           ResultSet rs = st.executeQuery(sql);
           while(rs.next()){
               int id = rs.getInt("id");
               String marca = rs.getString("marca");
               String modelo = rs.getString("modelo");
               int pesokg = rs.getInt("pesokg");
               int copias = rs.getInt("disponibilidad");
               boolean novedad = rs.getBoolean("novedad");
               
               Peliculas peliculas = new Peliculas(id,marca,modelo,pesokg,copias,novedad);
               System.out.println(peliculas.toString());
           }
               
           
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        finally{
            con.desconectar();
            
        }
    
   
    
}
}
