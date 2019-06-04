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
    /*public static void main(String[] args) {
        // TODO code application logic here
        
         //AjouterP(100,"AAAA",50.50,15,"Informatique",1);
        
        //SupprimerParID(3);
        
        
        
        //AjouterP(10,"lorenzo", "njitche",true);
        //RechercherP(10);
        
        //DeleteEvaluation(55);
        //CreateEvaluation(56,27,10,"AB");
        //UpdateEvaluation(55,27,16,"TB");
        //CreatePersonne(23,"lorenzo", "njitche",true);
        //UpdatePersonne(100,"lorenzo", "HADJEB",true );
        CreateEleve(100,"lorenzo", "HADJEB");
        InscriptionClasse (19,2,100);
        
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
     
    }*/
    
  
    
    public static Connection  connecterDB(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            
            String url="jdbc:mysql://localhost:8889/Ecole";
            String user="root";
            String password="root";
           Connection cnx=DriverManager.getConnection(url,user,password);
            System.out.println("Connexion bien établie");
            return cnx;
        }catch(Exception e){
            e.printStackTrace();
            return null;
        }
    }
   
    public static void CreatePersonne(int id,String nom,String prenom,boolean type){
        try{
            String n = "'"+nom+"'";
            String p = "'"+prenom+"'";
            System.out.println(n);
            String query="INSERT INTO PERSONNE VALUES("+id+","+n+","+p+","+type+")";
            cnx=connecterDB();
            st=cnx.createStatement();
            st.executeUpdate(query);
            System.out.println("Personne bien ajouté");
            
        }catch(SQLException e){
            System.out.println(e.getMessage());
        }
        
        
    }
    
    public static void CreateEleve(int id,String nom,String prenom){
        try{
            
            String n = "'"+nom+"'";
            String p = "'"+prenom+"'";
            System.out.println(n);
            String query="INSERT INTO ELEVE VALUES("+id+","+n+","+p+")";
            
            cnx=connecterDB();
            st=cnx.createStatement();
            st.executeUpdate(query);
            System.out.println("Personne bien ajouté");
            
        }catch(SQLException e){
            System.out.println(e.getMessage());
        }
    }
    
    public static void InscriptionClasse (int id, int classe_id,int eleve_id){
        try{            
            
            String query="INSERT INTO INSCRIPTION VALUES("+id+","+classe_id+","+eleve_id+")";
           System.out.println(query);
            
            cnx=connecterDB();
            st=cnx.createStatement();
            st.executeUpdate(query);
            System.out.println("Personne bien inscrite");
            
        }catch(SQLException e){
            System.out.println(e.getMessage());
        }
        
        
    }
    public static void DeletePersonne(int id){
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
    
   public static void UpdatePersonne(int id,String nom,String prenom,boolean type ){
       try{
           String query="UPDATE PERSONNE SET nom='"+nom+"', prenom='"+prenom+"', type="+type+" WHERE id="+id;
           cnx=connecterDB();
           st=cnx.createStatement();
           st.executeUpdate(query);
           System.out.println("Produit bien modifié");
           
       }catch(SQLException e){
           System.out.println(e.getMessage());
       }
       
       
   }
    
    
     public static void RechercherP(int id){
       try{
          
           String query="SELECT NOM FROM  PERSONNE  WHERE id="+id;
           System.out.println(query);
           cnx=connecterDB();
           st=cnx.createStatement();
           ResultSet rs = st.executeQuery(query);
           //st.executeQuery(query);
           while (rs.next()) {
                String lastName = rs.getString("NOM");
                System.out.println(lastName + "\n");
            }     
           System.out.println("fin recherche p");
           
       }catch(SQLException e){
           System.out.println(e.getMessage());
       }
       
       
   }
   
     public static void CreateEvaluation(int id,int detailbulletin_id ,double note,String appreciation){
        try{
            String a = "'"+appreciation+"'";
            
            System.out.println(a);
            String query="INSERT INTO EVALUATION VALUES("+id+","+note+","+a+","+detailbulletin_id+")";
            cnx=connecterDB();
            st=cnx.createStatement();
            st.executeUpdate(query);
            System.out.println("EVALUATION bien ajouté");
            
        }catch(SQLException e){
            System.out.println(e.getMessage());
        }
        
        
    }
     
     public static void DeleteEvaluation(int id){
        try{
           String query="DELETE FROM EVALUATION WHERE id="+id; 
           cnx=connecterDB();
           st=cnx.createStatement();
           st.executeUpdate(query);
           System.out.println("EVALUATION bien supprimé");
            
        }catch(SQLException e){
            System.out.println(e.getMessage());
        }
    }
     
     
     
    
   public static void UpdateEvaluation( int id,int id_detailbulletin, double note, String appreciation){
       try{
            System.out.println("cc");
        String a = "'"+appreciation+"'";
           
           String query="UPDATE EVALUATION SET note='"+note+"', id_detailbulletin='"+id_detailbulletin+"', appreciation="+a+" WHERE id="+id;
           cnx=connecterDB();
           st=cnx.createStatement();
           st.executeUpdate(query);
           System.out.println("Produit bien modifié");
           
       }catch(SQLException e){
           System.out.println(e.getMessage());
       }
       
       
   }
   

    
}
