/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vue;

import java.awt.BorderLayout;
import javax.swing.JFrame;
import java.awt.Color; 
import java.awt.event.ActionListener;
import javafx.event.ActionEvent;
import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JPanel;
import java.awt.BorderLayout;
import java.awt.CardLayout;
import java.awt.Color;
import java.awt.Dimension;
//import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.BorderFactory;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JTextField;
import DAO.*;

/**
 *
 * @author Lorenzo
 */
public class CreerEtu extends JFrame {
    
     JPanel pan = new JPanel();
    //JPanel pan1 = new JPanel();
    JPanel boutonpan = new JPanel();   
    
    String name, name1;
    int id ;
    
    
    JTextField nom , prénom, id1;
    JLabel nomLabel, prenomLabel, idLabel ;
    EleveDAO e = new EleveDAO();
          
    
    public CreerEtu(){
            
    this.setTitle("creer étudiants");
    this.setSize(400, 400);
    this.setLocationRelativeTo(null);
    this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);             
    this.setVisible(true);

    //Définition de sa couleur de fond
    this.pan.setBackground(Color.BLUE);        
    //On prévient notre JFrame que notre JPanel sera son content pane
    this.boutonpan.setBackground(Color.BLUE);
    this.setContentPane(pan);     
    
        
    this.setLayout(new BorderLayout());
    
    this.getContentPane().add(new JLabel("Vous voici dans la rubrique création d'etudiants"), BorderLayout.NORTH);
       
    JPanel panNom = new JPanel();
    panNom.setBackground(Color.white);
    panNom.setPreferredSize(new Dimension(400, 100));
    nom = new JTextField();
    nom.setPreferredSize(new Dimension(100, 25));
    panNom.setBorder(BorderFactory.createTitledBorder("Nom de l'étudiant"));
    nomLabel = new JLabel("Saisir un nom :");
    panNom.add(nomLabel);
    panNom.add(nom);
    
    JPanel panPrenom = new JPanel();
    panPrenom.setBackground(Color.white);
    panPrenom.setPreferredSize(new Dimension(400, 100));
    prénom = new JTextField();
    prénom.setPreferredSize(new Dimension(100, 25));
    panPrenom.setBorder(BorderFactory.createTitledBorder("Prénom de l'étudiant"));
    prenomLabel = new JLabel("Saisir un prénom :");
    panPrenom.add(prenomLabel);
    panPrenom.add(prénom);
    
    JPanel panId = new JPanel();
    panId.setBackground(Color.white);
    panId.setPreferredSize(new Dimension(400, 100));
    id1 = new JTextField();
    id1.setPreferredSize(new Dimension(100, 25));
    panPrenom.setBorder(BorderFactory.createTitledBorder("ID de l'étudiant"));
    idLabel = new JLabel("Saisir un ID :");
    panId.add(idLabel);
    panId.add(id1);
    
    JButton b1 = new JButton("creer l'etudiant !");
    
    JPanel Millieu = new JPanel();
    Millieu.add(panNom);
    Millieu.add(panPrenom);
    Millieu.add(panId);
    Millieu.add(b1);
    
        b1.addActionListener(new ActionListener(){
      public void actionPerformed(java.awt.event.ActionEvent event){
 
          
         
      name = nom.getText();
      name1 = prénom.getText();
      id = Integer.parseInt(id1.getText());
      
      EleveDAO e = new EleveDAO();
      e.CreateEleve(id, name, name1);
      
     
      
      System.out.println("l'étudiant "+ name + " "+ name1+ " a été ajouté avec succes");
      
      
      

      
      }
    });
         
         e.CreateEleve(WIDTH, name, name);

    this.getContentPane().add(Millieu, BorderLayout.CENTER);

    this.setVisible(true);
    
    
    
}
      
    
}
