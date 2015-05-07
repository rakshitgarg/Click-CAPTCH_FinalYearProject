package com.ep;

import java.awt.BorderLayout;
import javax.swing.JPanel;

import java.awt.Color;
import java.awt.Graphics2D;
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


public class MergeImage2  extends JPanel{


public static void main(String[] args){
	
	int rows = 7;   //we assume the no. of rows and cols are known and each chunk has equal width and height  
    int cols = 7;  
    int chunks = rows * cols;  
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
			 {260,261,262},
			 {270,271,272},
			 {280,281,282},				 
			 {290,291,292},
			 {300,301,302},				 
			 {310,311,312},
			 {320,321,322},
			 {330,331,332},
			 {340,341,342},
			 {350,351,352},
			 {360,361,362},
			 {370,371,372},
			 {380,381,382},				 
			 {390,391,392},				
			 {400,401,402},
			 {410,411,412},				 
			 {420,421,422},
			 {430,431,432}, 
			 {440,441,442},
			 {450,451,452},
			 {460,461,462},
			 {470,471,472},
			 {480,481,482}  };

    int chunkWidth, chunkHeight;  
    int type;  
   
      // creating list for generation unique random number
        ArrayList<Integer> list = new ArrayList<Integer>();
        for (int i=0; i<49; i++) {
            list.add(new Integer(i));
        }
        Collections.shuffle(list);   // shuffle the list to create non-sorted list 
        int max=2;
        int min=0;
        Random rn = new Random();
        
    //fetching image files  
    File[] imgFiles = new File[49];  
    String[] filenames= new  String[49];
    for(int j : list)
    {
    	imgFiles[j] = new File("Timage" + temp[j][rn.nextInt(max - min + 1) + min] + ".png");
   
    }
  // generate random number to insert the composite image
    int max1=48;
    int min1=0;
    Random rn1 = new Random();
    imgFiles[rn1.nextInt(max1 - min1 + 1) + min1]= new File("Timagei.png");
    imgFiles[rn1.nextInt(max1 - min1 + 1) + min1]= new File("Timagej.png");
    
  //creating a bufferd image array from image files  
       
    BufferedImage[] buffImages = new BufferedImage[chunks];  
    //Random randomGenerator = new Random();
    
    for (int i = 0; i < 49; i++) {  
        try {
        	  buffImages[i] = ImageIO.read(new File("C:/Eclipse Workspace/Java/IEEE2014/Captcha/images/"+imgFiles[list.get(i)]));
        	 	filenames[i]= imgFiles[list.get(i)].getName();
        	 	System.out.println(filenames[i]);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			 System.out.println("value1 :"+imgFiles[list.get(i)].getName());

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
    
// Set Background Color of Colarge   
    		Graphics2D    graphics = finalImg.createGraphics();
    		graphics.setPaint(Color.WHITE);
    		graphics.fillRect ( 0, 0, finalImg.getWidth(), finalImg.getHeight() );
    
   
    
    for (int i = 0,k=0; i < rows; i++) {  
    	imgx = 0;
    	imgy += 50;
    	for (int j = 0; j < cols; j++,k++) {  
            finalImg.createGraphics().drawImage(buffImages[num], chunkWidth * j, chunkHeight * i, null);  
            imgx += 50;
            //System.out.println(buffImages[num]);
            (new Connectiondb()).storeColarge(num,filenames[k],imgx-50,imgy-50,imgx,imgy);
            num++;      		
        }  
    }  
  
    try {
		ImageIO.write(finalImg, "png", new File("finalImg.png"));
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}  
   try{
	   (new Connectiondb()).userDelete("ram");
    ImageDisplay("C:/Eclipse Workspace/Java/IEEE2014/Captcha/finalImg.png");
    
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
  
}              

}
