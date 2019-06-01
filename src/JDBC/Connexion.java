/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package JDBC;

/*
 * 
 * Librairies importées
 */
import java.sql.*;

public class Connexion {
 static Connection cnx;
 static Statement st;
 static ResultSet rst;
  
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
         //AjouterP(100,"AAAA",50.50,15,"Informatique",1);
        
        //SupprimerParID(3);
        
        AjouterP(2,"meli", "melo",true);
        
        
        
                
          try{
              cnx=connecterDB(); 
              st=cnx.createStatement();
              rst=st.executeQuery("SELECT * FROM PERSONNE");
              
              while(rst.next()){
                  System.out.print(rst.getInt("id")+"\t");
                  System.out.print(rst.getString("nom")+"\t");
                  System.out.print(rst.getString("prenom")+"\t");
                  System.out.print(rst.getBoolean("type")+"\t");
                  System.out.println();
              }
          }catch(Exception ex){
              ex.printStackTrace();
          } 
     
    }
    
  
    
    public static Connection  connecterDB(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver oki");
            String url="jdbc:mysql://localhost:8889/Ecole";
            String user="root";
            String password="root";
           Connection cnx=DriverManager.getConnection(url,user,password);
            System.out.println("Connexion bien établié");
            return cnx;
        }catch(Exception e){
            e.printStackTrace();
            return null;
        }
    }
   
    public static void AjouterP(int id,String nom,String prenom,boolean type){
        try{
            String query="INSERT INTO PERSONNE VALUES('"+id+" "+nom+" "+prenom+" "+type+"')";
            cnx=connecterDB();
            st=cnx.createStatement();
            st.executeUpdate(query);
            System.out.println("Personne bien ajouté");
            
        }catch(SQLException e){
            System.out.println(e.getMessage());
        }
        
        
    }
   
    public static void SupprimerParID(int id){
        try{
           String query="DELETE FROM PERSONNE WHERE id="+id; 
           cnx=connecterDB();
           st=cnx.createStatement();
           st.executeUpdate(query);
           System.out.println("Personne bien supprimé");
            
        }catch(SQLException e){
            System.out.println(e.getMessage());
        }
    }
   
    public static void rechercheParNom(String nom){
        try{
           String query="SELECT * FROM PERSONNE WHERE NOM='"+nom+"'"; 
           cnx=connecterDB();
           st=cnx.createStatement();
           rst= st.executeQuery(query);
           rst.last();
           int nbrRow = rst.getRow();
           if(nbrRow!=0){
               System.out.println("personne trouve");
           }else{
                System.out.println("Personnenon trouve");
               
           }
           
            
        }catch(SQLException e){
            System.out.println(e.getMessage());
        }
        
    }
    
   public static void ModifierP(int id,String nom,String prenom,boolean type ){
       try{
           String query="UPDATE PERSONNE SET nom='"+nom
                   +"', prenom="+prenom
                   +", type="+type
                   +" WHERE id="+id;
           cnx=connecterDB();
           st=cnx.createStatement();
           st.executeUpdate(query);
           System.out.println("Produit bien modifié");
           
       }catch(SQLException e){
           System.out.println(e.getMessage());
       }
       
       
   }
    
    
    
    
   
    
}
