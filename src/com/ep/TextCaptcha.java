package com.ep;

import java.awt.BorderLayout;
import javax.swing.JPanel;
import java.awt.MouseInfo;
import java.awt.Point;
import java.awt.PointerInfo;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.Random;
import java.util.ArrayList;
import java.util.Collections;
import javax.imageio.ImageIO;
import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.SwingUtilities;
import javax.swing.WindowConstants;
import java.awt.event.MouseEvent;
import com.ep.Connectiondb;


public class TextCaptcha extends JPanel{

	// static MouseEvent e= null;
	
public static void main(String[] args){
	
	int rows = 7;   //we assume the no. of rows and cols are known and each chunk has equal width and height  
    int cols = 7;  
    int chunks = rows * cols;  

    int chunkWidth, chunkHeight;  
    int type;  
   
      // creating list for generation unique random number
        ArrayList<Integer> list = new ArrayList<Integer>();
        for (int i=0; i<49; i++) {
            list.add(new Integer(i));
        }
        Collections.shuffle(list);   // shuffle the list to create non-sorted list 
    
    //fetching image files  
    File[] imgFiles = new File[49];  
    for(int j : list)
    {
    	imgFiles[j] = new File("Timage" + j + ".png");
    }
    
    //creating a bufferd image array from image files  
       
    BufferedImage[] buffImages = new BufferedImage[chunks];  
  
    for (int i = 0; i < chunks; i++) {  
        try {
        	 	buffImages[i] = ImageIO.read(new File("C:/workspace/Captcha/images/"+imgFiles[list.get(i)]));
        		        		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
    }  
    type = buffImages[0].getType();  
    chunkWidth = buffImages[0].getWidth();  
    chunkHeight = buffImages[0].getHeight();  
    
     //Initializing the final image  
    BufferedImage finalImg = new BufferedImage(chunkWidth*cols, chunkHeight*rows, type);  
    int imgx = 0;
    int imgy = 0;
    int num = 0;  
    for (int i = 0; i < rows; i++) {  
    	imgx = 0;
    	imgy += 50;
    	for (int j = 0; j < cols; j++) {  
            finalImg.createGraphics().drawImage(buffImages[num], chunkWidth * j, chunkHeight * i, null);  
            imgx += 50;
            (new Connectiondb()).storeColarge(num,imgFiles[num].getName(),imgx-50,imgy-50,imgx,imgy);
            num++;      		
        }  
    }  
  
    try {
		ImageIO.write(finalImg, "png", new File("finalTImg.png"));
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}  
   try{
	   (new Connectiondb()).userDelete("ram");
    ImageDisplay("C:/workspace/Captcha/finalTImg.png");
    
   }
   catch(Exception e){
	   e.printStackTrace();
   }
   (new Connectiondb()).storeSeq("ram");
}   // end of main()

public static void ImageDisplay(final String filename) throws Exception
{
  
  SwingUtilities.invokeLater(new Runnable()
  {
    public void run()
    {
    		
      JFrame editorFrame = new JFrame("Image Demo");
      editorFrame.setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);
      
      BufferedImage image = null;
      try
      {
        image = ImageIO.read(new File(filename));
      }
      catch (Exception e)
      {
        e.printStackTrace();
        System.exit(1);
      }
      ImageIcon imageIcon = new ImageIcon(image);
      JLabel jLabel = new JLabel();
      jLabel.setIcon(imageIcon);
      editorFrame.getContentPane().add(jLabel, BorderLayout.CENTER);
      editorFrame.getContentPane().addMouseListener(new MouseAdapter() { 
    	  int count=0;
	        public void mouseClicked(MouseEvent me){
	        	PointerInfo a = MouseInfo.getPointerInfo();
	        	Point point = new Point(a.getLocation());
	        	SwingUtilities.convertPointFromScreen(point, me.getComponent());
	        	int x=(int) point.getX();
	        	int y=(int) point.getY();
	        	count++;
	        	(new Connectiondb()).userSelect("ram",count,x,y);
	         }
	      });
      
      editorFrame.pack();
      editorFrame.setLocationRelativeTo(null);
      editorFrame.setVisible(true);
     
    }
  });
  
}               // end of ImageDemo()

}
