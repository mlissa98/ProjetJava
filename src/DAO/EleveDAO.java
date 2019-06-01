/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

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



}

