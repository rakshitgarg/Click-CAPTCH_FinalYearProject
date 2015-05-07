package com.ep;

import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

import javax.swing.JFrame;
import javax.swing.JPanel;


public class mouse extends JPanel {

  public mouse() {

      addMouseListener(new MouseAdapter() { 
       
          public void mouseClicked(MouseEvent e){
        	  System.out.println(e);
          }
        }); 

  }

  public static void main(String[] args) {
    JFrame frame = new JFrame();
    frame.getContentPane().add(new mouse());

    frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

    frame.setSize(200, 200);
    frame.setVisible(true);
  }
}