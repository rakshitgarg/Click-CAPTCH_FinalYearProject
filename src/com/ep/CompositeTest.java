package com.ep;

import java.awt.*;
import java.awt.geom.*;
import java.awt.image.*;
import java.io.*;
import java.net.*;
import javax.imageio.*;
import javax.swing.*;
import javax.swing.event.*;
  
public class CompositeTest extends JComponent {
    private BufferedImage backImage, frontImage;
    private float alpha = 1;
  
    public CompositeTest() throws IOException {
        backImage = ImageIO.read(new File("C:/Eclipse Workspace/Java/IEEE2014/Captcha/images/Timage0_new.png"));
        frontImage = ImageIO.read(new File("C:/Eclipse Workspace/Java/IEEE2014/Captcha/images/Timage1_new.png"));
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
   
      ImageIO.write(combined , "PNG", new File("C:/Eclipse Workspace/Java/IEEE2014/Captcha/images", "combined.png"));    
    
     }catch(IOException e){
    	 e.printStackTrace();
     }
    }
  
    public static void main(String[] args) throws IOException {
        final CompositeTest app = new CompositeTest();
    
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