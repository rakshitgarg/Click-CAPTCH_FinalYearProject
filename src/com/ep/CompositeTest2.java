package com.ep;

import java.awt.*;
import java.awt.geom.*;
import java.awt.image.*;
import java.io.*;
import java.net.*;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Random;

import javax.imageio.*;
import javax.swing.*;
import javax.swing.event.*;
  
public class CompositeTest2 extends JComponent {
   
	int[][] temp= {{0,1,2},
			 {10,11,12},
			 {20,21,22},
			 {30,31,32},
			 {40,41,42},
			 {50,51,52},				 
			 {60,61,62},
			 {70,71,72},
			 {80,81,82},
			 {90,91,92},
			 {100,101,102},
			 {110,111,112},				 
			 {120,121,122},
			 {130,131,132},
			 {140,141,142},
			 {150,151,152},
			 {160,161,162},				 
			 {170,171,172},
			 {180,181,182},
			 {190,191,192},
			 {200,201,202},
			 {210,211,212},
			 {220,221,222},
			 {230,231,232},				 
			 {240,241,242},
			 {250,251,252},
			  };
	
	private BufferedImage backImage, frontImage,backImage1, frontImage1;
    private float alpha = 1;
    String filename1=null;
    String filename2=null;
    String filename3=null;
    String filename4=null;
    
    public CompositeTest2() throws IOException {
    
    	int max=25;
        int min=0;
        Random rn = new Random();        
        int max1=2;
        int min1=0;
        Random rn1 = new Random();
        
    	   ArrayList<Integer> list = new ArrayList<Integer>();
           for (int i=0; i<26; i++) {
               list.add(new Integer(i));
           }
           Collections.shuffle(list); 
          
           int a= list.get(rn.nextInt(max - min + 1) + min);
           int b= rn1.nextInt(max1 - min1 + 1) + min1;
           filename1 = "Timage" + temp[a][b] + ".png";  
    	   backImage = ImageIO.read(new File("C:/Eclipse Workspace/Java/IEEE2014/Captcha/images/" + filename1));
    	  
    	   int a2= list.get(rn.nextInt(max - min + 1) + min);
           int b2= rn1.nextInt(max1 - min1 + 1) + min1;
           filename3 = "Timage" + temp[a2][b2] + ".png";  
    	   backImage1 = ImageIO.read(new File("C:/Eclipse Workspace/Java/IEEE2014/Captcha/images/" + filename3));
    	   
    	   int a1= list.get(rn.nextInt(max - min + 1) + min);
           int b1= rn1.nextInt(max1 - min1 + 1) + min1;
    	   filename2 = "Timage" + temp[a1][b1] + ".png";
           frontImage = ImageIO.read(new File("C:/Eclipse Workspace/Java/IEEE2014/Captcha/images/" + filename2));
           
           int a3= list.get(rn.nextInt(max - min + 1) + min);
           int b3= rn1.nextInt(max1 - min1 + 1) + min1;
    	   filename4 = "Timage" + temp[a3][b3] + ".png";
           frontImage1 = ImageIO.read(new File("C:/Eclipse Workspace/Java/IEEE2014/Captcha/images/" + filename4));
           
    }
  
    public Dimension getPreferredSize() {
        return new Dimension(backImage.getWidth(), backImage.getHeight());
    }
  
   public void setAlpha(float alpha) {
        this.alpha = alpha;
        repaint();
    }
  
    protected void paintComponent(Graphics g) {
        super.paintComponent(g);
        try{
            // Save as new image
      BufferedImage combined = new BufferedImage(50, 50, BufferedImage.TYPE_INT_ARGB);
      Graphics2D  g3i= combined.createGraphics();
      AlphaComposite ac = AlphaComposite.getInstance(AlphaComposite.SRC_OVER, alpha);
      g3i.drawImage(backImage, 0, 0, null);
      g3i.setComposite(ac);
      g3i.drawImage(frontImage, 0+20, 0, null);
   
      ImageIO.write(combined , "PNG", new File("C:/Eclipse Workspace/Java/IEEE2014/Captcha/images", "Timagei.png"));    
    
      BufferedImage combined1 = new BufferedImage(50, 50, BufferedImage.TYPE_INT_ARGB);
      Graphics2D  g3j= combined1.createGraphics();
      AlphaComposite ac1 = AlphaComposite.getInstance(AlphaComposite.SRC_OVER, alpha);
      
      g3j.drawImage(backImage1, 0, 0, null);
      g3j.setComposite(ac1);
      g3j.drawImage(frontImage1, 0+20, 0, null);
   
      ImageIO.write(combined1 , "PNG", new File("C:/Eclipse Workspace/Java/IEEE2014/Captcha/images", "Timagej.png"));
      
      
     }catch(IOException e){
    	 e.printStackTrace();
     }
    }
  
    public static void main(String[] args) throws IOException {
        final CompositeTest2 app = new CompositeTest2();
    
        app.setAlpha(50/100f);
   
        JFrame f = new JFrame("CompositeTest");
        f.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        Container cp = f.getContentPane();
        cp.add(app);
        f.pack();
        f.setLocationRelativeTo(null);
        f.setVisible(true);
        f.dispose();
    }
}