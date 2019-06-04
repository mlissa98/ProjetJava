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
//import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;


/**
 *
 * @author Lorenzo
 */
public class Mstudent extends JFrame {
    
    
    JPanel pan = new JPanel();
    //JPanel pan1 = new JPanel();
    JPanel boutonpan = new JPanel();
    CardLayout cl = new CardLayout();
    
      public Mstudent(){
            
    this.setTitle("Gestion des étudiants");
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
    
    this.getContentPane().add(new JLabel("Vous voici dans la rubrique etudiants"), BorderLayout.NORTH);
    
    JButton b1 = new JButton("Voir les etudiants");
    JButton b2 = new JButton("Creer un etudiant");
    JButton b3 = new JButton("Modifier un etudiant");
    JButton b4 = new JButton("Virer un etudiant");
    boutonpan.add(b1);
    boutonpan.add(b2);
    boutonpan.add(b3);
    boutonpan.add(b4);    
    
     b1.addActionListener(new ActionListener(){
      public void actionPerformed(java.awt.event.ActionEvent event){
 
      System.out.println("Creer un etudiant");
      
      createstudent();

      
      }
    });
    
    b2.addActionListener(new ActionListener(){
      public void actionPerformed(java.awt.event.ActionEvent event){

      System.out.println("Creer un etudiant");
      CreerEtu e = new CreerEtu();
      
      }
    });
    
    b4.addActionListener(new ActionListener(){
      public void actionPerformed(java.awt.event.ActionEvent event){

      System.out.println("Supprimer un etudiant");
      SupprEtu e = new SupprEtu();
      
      }
    });
    
    this.getContentPane().add(boutonpan, BorderLayout.CENTER);

    this.setVisible(true);
    
    
    
}
      
public void createstudent ()
{
    

}
        
      
      
}
