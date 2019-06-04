/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import static JDBC.Connexion.connecterDB;
import JDBC.*;
import static JDBC.Connexion.cnx;
import static JDBC.Connexion.st;
import java.sql.SQLException;



/**
 *
 * @author Meli
 */
public class EleveDAO {
    private int id=0;
    private String nom ;
    private String prenom;
    
    
public EleveDAO(int id, String nom, String prenom, boolean type){
    this.id = id;
    this.nom= nom;
    this.prenom=prenom;
    
    
}


public EleveDAO(){
}

public int getId(){
return id;
}

public String getNom(){
return nom;
}

public String getPrenom(){
return prenom;
}


public void setId(int id){
this.id=id;
}

public void setNom( String nom){
this.nom=nom;
}

public void setPrenom(String prenom){
this.prenom=prenom;
}






public  void CreateEleve(int id,String nom,String prenom){
        
    try{
            
            
           String n = "'"+nom+"'";
           String p = "'"+prenom+"'";
           
            System.out.println(n);
            String query="INSERT INTO ELEVE VALUES("+id+","+n+","+p+")";
           
            cnx = connecterDB();
            st = cnx.createStatement();
            st.executeUpdate(query);
            System.out.println("Personne bien ajouté");
            
        }
    catch( SQLException e){
            System.out.println(e.getMessage());
        }
    }

public void DeleteEleve(int id){
        try{
           String query="DELETE FROM ELEVE WHERE id="+id; 
           cnx=connecterDB();
           st=cnx.createStatement();
           st.executeUpdate(query);
           System.out.println("Personne bien supprimé");
            
        }catch(SQLException e){
            System.out.println(e.getMessage());
        }
    }






}

