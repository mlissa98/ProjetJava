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
import java.awt.event.WindowEvent;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;
import DAO.*;
 
/**
 *
 * @author Lorenzo
 */
public class Acceuil extends JFrame {
    
    JPanel pan = new JPanel();
    JPanel boutonpan = new JPanel();
    
      public Acceuil(){
            
    this.setTitle("Acceuil - ECE Paris by Lyly ©");
    this.setSize(400, 400);
    this.setLocationRelativeTo(null);
    this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);             
    this.setVisible(true);
    
        //Instanciation d'un objet JPanel
    
    //Définition de sa couleur de fond
    this.pan.setBackground(Color.BLUE);        
    //On prévient notre JFrame que notre JPanel sera son content pane
    this.boutonpan.setBackground(Color.BLUE);
    this.setContentPane(pan);     
    
        
    this.setLayout(new BorderLayout());
    
    this.getContentPane().add(new JLabel("Bienvenue à l'accueil de l'ECE Paris Lyon"), BorderLayout.NORTH);
    
    JButton b1 = new JButton("Etudiants");
    JButton b2 = new JButton("Professeurs");
    boutonpan.add(b1);
    boutonpan.add(b2);
    
    this.getContentPane().add(boutonpan, BorderLayout.CENTER);
    
   
    b1.addActionListener(new ActionListener(){
      public void actionPerformed(java.awt.event.ActionEvent event){
        //Via cette instruction, on passe au prochain conteneur de la pile
        //cl.next(content);
      System.out.println("Etudiants");
      //this.dispatchEvent(new WindowEvent(this, WindowEvent.WINDOW_CLOSING));

      
      Mstudent etudiant = new Mstudent();
      
      }
    });
    
    b2.addActionListener(new ActionListener(){
      public void actionPerformed(java.awt.event.ActionEvent event){
        //Via cette instruction, on passe au prochain conteneur de la pile
        //cl.next(content);
      System.out.println("Professeurs");
      }
    });
        
    this.setVisible(true);
  }   
      
    public static void main(String[] args) {
  
        //Acceuil a  = new Acceuil();
        
             EleveDAO e =  new EleveDAO();
             e.CreateEleve(100,"lorenzo", "HADJEB");
             e.DeleteEleve(100);
}
    
}


