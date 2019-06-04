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
import static java.awt.image.ImageObserver.WIDTH;

/**
 *
 * @author Lorenzo
 */
public class SupprEtu extends JFrame {
    
     JPanel pan = new JPanel();
    //JPanel pan1 = new JPanel();
    JPanel boutonpan = new JPanel();   
    
    String name;
    int id ;
    
    
    JTextField nom , prénom, id1;
    JLabel nomLabel, prenomLabel, idLabel ;
    EleveDAO e = new EleveDAO();
          
    
    public SupprEtu(){
            
    this.setTitle("Supprimer un  étudiants");
    this.setSize(400, 400);
    this.setLocationRelativeTo(null);
    this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);             
    this.setVisible(true);

    //Définition de sa couleur de fond
    this.pan.setBackground(Color.WHITE);        
    //On prévient notre JFrame que notre JPanel sera son content pane
    this.boutonpan.setBackground(Color.WHITE);
    this.setContentPane(pan);     
    
        
    this.setLayout(new BorderLayout());
    
    this.getContentPane().add(new JLabel("Vous voici dans la rubrique création d'etudiants"), BorderLayout.NORTH);
       
    
    
    
    
    JPanel panId = new JPanel();
    panId.setBackground(Color.white);
    panId.setPreferredSize(new Dimension(400, 100));
    id1 = new JTextField();
    id1.setPreferredSize(new Dimension(100, 25));
    panId.setBorder(BorderFactory.createTitledBorder("ID de l'étudiant"));
    idLabel = new JLabel("Saisir un ID :");
    panId.add(idLabel);
    panId.add(id1);
    
    JButton b1 = new JButton("Supprimer l'etudiant !");
    
    JPanel Millieu = new JPanel();
    Millieu.add(panId);
    Millieu.add(b1);
    
        b1.addActionListener(new ActionListener(){
      public void actionPerformed(java.awt.event.ActionEvent event){
 
          
         
     
      id = Integer.parseInt(id1.getText());
      
      EleveDAO e = new EleveDAO();
      e.DeleteEleve(id);
      
     
      
      System.out.println("l'étudiant  a été supprimé avec succes");
      
      
      

      
      }
    });
         
       

    this.getContentPane().add(Millieu, BorderLayout.CENTER);

    this.setVisible(true);
    
    
    
}
      
    
}
