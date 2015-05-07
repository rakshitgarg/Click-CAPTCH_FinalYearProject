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


public class MergeImage extends JPanel{

	// static MouseEvent e= null;
	
	/* MergeImage(){
		    addMouseListener(new MouseAdapter() { 
		       
		        public void mouseClicked(MouseEvent me){
		        	PointerInfo a = MouseInfo.getPointerInfo();
		        	Point point = new Point(a.getLocation());
		        	SwingUtilities.convertPointFromScreen(point, me.getComponent());
		        	int x=(int) point.getX();
		        	int y=(int) point.getY();
		        	System.out.println(x);
		        	System.out.println(y);
		        }
		      }); }
*/	
	
	/*public int random(){
	 Random randomGenerator = new Random();
	 int randomInt=-1;   
	 for (int idx = 1; idx <= 10; ++idx)
	      randomInt = randomGenerator.nextInt(100);
	      return randomInt;
	    }*/
	
public static void main(String[] args){
	
	int rows = 3;   //we assume the no. of rows and cols are known and each chunk has equal width and height  
    int cols = 3;  
    int chunks = rows * cols;  

    int chunkWidth, chunkHeight;  
    int type;  
   
      // creating list for generation unique random number
        ArrayList<Integer> list = new ArrayList<Integer>();
        for (int i=0; i<13; i++) {
            list.add(new Integer(i));
        }
        Collections.shuffle(list);   // shuffle the list to create non-sorted list 
    
    //fetching image files  
    File[] imgFiles = new File[13];  
    for(int j : list)
    {
    	imgFiles[j] = new File("image" + j + ".jpg");
    }
    
   /* for (int i = 0; i < 13; i++) {  
        imgFiles[i] = new File("image" + i + ".jpg"); 
        
    }  */
   //creating a bufferd image array from image files  
       
    BufferedImage[] buffImages = new BufferedImage[chunks];  
    //Random randomGenerator = new Random();
    //int randomInt = -1;
    for (int i = 0; i < chunks; i++) {  
        try {
        	  //  randomInt = randomGenerator.nextInt(9);
        	    //System.out.println(randomInt);
        	    
        		buffImages[i] = ImageIO.read(new File("C:/Eclipse Workspace/Java/IEEE2014/Captcha/images/"+imgFiles[list.get(i)]));
        		        		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
    }  
    type = buffImages[0].getType();  
    chunkWidth = buffImages[0].getWidth();  
    chunkHeight = buffImages[0].getHeight();  
    
 //   System.out.println(chunkWidth);
  //  System.out.println(chunkHeight);
    //Initializing the final image  
    BufferedImage finalImg = new BufferedImage(chunkWidth*cols, chunkHeight*rows, type);  
    int imgx = 0;
    int imgy = 0;
    int num = 0;  
    for (int i = 0; i < rows; i++) {  
    	imgx = 0;
    	imgy += 236;
    	for (int j = 0; j < cols; j++) {  
            finalImg.createGraphics().drawImage(buffImages[num], chunkWidth * j, chunkHeight * i, null);  
            imgx += 236;
            (new Connectiondb()).storeColarge(num,imgFiles[num].getName(),imgx-236,imgy-236,imgx,imgy);
            num++;      		
        }  
    }  
   // System.out.println("Image concatenated.....");  
    try {
		ImageIO.write(finalImg, "jpeg", new File("finalImg.jpg"));
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}  
   try{
	   (new Connectiondb()).userDelete("ram");
    ImageDisplay("C:/Eclipse Workspace/Java/IEEE2014/Captcha/finalImg.jpg");
    
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
      //editorFrame.getContentPane().add(new MergeImage());
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
	        	//System.out.println(count);
	        }
	      });
      
      editorFrame.pack();
      editorFrame.setLocationRelativeTo(null);
      editorFrame.setVisible(true);
    
     
    //  mouseClicked(e);
      
    }
  });
  
}               // end of ImageDemo()
/*	
public static void mouseClicked(MouseEvent e) {
PointerInfo a = MouseInfo.getPointerInfo();
Point point = new Point(a.getLocation());
SwingUtilities.convertPointFromScreen(point, e.getComponent());
int x=(int) point.getX();
int y=(int) point.getY();
System.out.println(x);
System.out.println(y);
}                            //  end of mouseClicked()
*/





}
