package com.ep;

import java.awt.AlphaComposite;
import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Container;
import java.awt.Dimension;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.MouseInfo;
import java.awt.Point;
import javax.swing.JFrame;
import java.awt.PointerInfo;
import java.awt.RenderingHints;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Random;
import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
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


public class Render extends JComponent{

	private static final int IMG_WIDTH = 30;
	private static final int IMG_HEIGHT = 50;
	int a1,a2,b1,b2;
	int[][] resize= {
			 {0,1,2},
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

   
	/*public static void main(String [] args){

		
		 
    }  // end of main

*/	// creates colarge, captures co-ordinates and stores in db
	public void coLarge(){
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
	        int index1= list.indexOf(a1);
	        int index2 = list.indexOf(b1);
	        System.out.println("index1 ="+ a1);
	        System.out.println("index2 ="+ b1);
	        System.out.println("index1 ="+ index1);
	        System.out.println("index2 ="+ index2);
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
	        	  buffImages[i] = ImageIO.read(new File("C:/workspace/Captcha/images/"+imgFiles[list.get(i)]));
	        	 	filenames[i]= imgFiles[list.get(i)].getName();
	        	 	System.out.println(filenames[i]);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				 System.out.println("value1 :"+imgFiles[list.get(i)].getName());

			}  
	    }  
	    type = 6;  
	    chunkWidth = buffImages[0].getWidth();  
	    chunkHeight = buffImages[0].getHeight();
	    BufferedImage finalImg= null;
	 try{
	    //Initializing the final image  
		  finalImg= new BufferedImage(chunkWidth*cols, chunkHeight*rows, type);  
	    
	 }catch(IllegalArgumentException e){
		  finalImg = new BufferedImage(chunkWidth*cols, chunkHeight*rows, type);
	 }
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
			ImageIO.write(finalImg, "png", new File("C:/workspace/Captcha/WebContent/img/finalImg.png"));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
	   try{
		   (new Connectiondb()).userDelete("ram");
	//    ImageDisplay("C:/Eclipse Workspace/Java/IEEE2014/Captcha/WebContent/img/finalImg.png");
	    
	   }
	   catch(Exception e){
		   e.printStackTrace();
	   }
	   (new Connectiondb()).storeSeq("ram");
	}

	public static void ImageDisplay(final String filename) throws Exception
	{
	  
	  SwingUtilities.invokeLater(new Runnable()
	  {
	    public void run()
	    {
	    		
	      JFrame editorFrame = new JFrame("Image Demo");
	   //   editorFrame.setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);
	      editorFrame.dispose();
	      
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

	// creates composite images
	public Render() throws IOException{
		
		  resize();
		  
		  backImage = ImageIO.read(new File("C:/workspace/Captcha/images/resize.png"));
    	  backImage1 = ImageIO.read(new File("C:/workspace/Captcha/images/resize1.png"));
    	   
    	  frontImage = ImageIO.read(new File("C:/workspace/Captcha/images/resize2.png"));
          frontImage1 = ImageIO.read(new File("C:/workspace/Captcha/images/resize3.png"));
           		
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
  
     ImageIO.write(combined , "PNG", new File("C:/workspace/Captcha/images", "Timagei.png"));    
   
     BufferedImage combined1 = new BufferedImage(50, 50, BufferedImage.TYPE_INT_ARGB);
     Graphics2D  g3j= combined1.createGraphics();
     AlphaComposite ac1 = AlphaComposite.getInstance(AlphaComposite.SRC_OVER, alpha);
     
     g3j.drawImage(backImage1, 0, 0, null);
     g3j.setComposite(ac1);
     g3j.drawImage(frontImage1, 0+20, 0, null);
  
     ImageIO.write(combined1 , "PNG", new File("C:/workspace/Captcha/images", "Timagej.png"));
     
     
    }catch(IOException e){
   	 e.printStackTrace();
    }
   }
	
	
	
	//  creates resized images
	private void resize(){
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

	try{
 // 1
		a1=rn.nextInt(max - min + 1) + min;
		a2=rn1.nextInt(max1 - min1 + 1) + min1;
		BufferedImage originalImage = ImageIO.read(new File("C:/Eclipse Workspace/Java/IEEE2014/Captcha/images/Timage" + resize[list.get(a1)][a2] + ".png"));
		int type = originalImage.getType() == 0? BufferedImage.TYPE_INT_ARGB : originalImage.getType();
 
		BufferedImage resizeImagePng = resizeImage(originalImage, type);
		ImageIO.write(resizeImagePng, "png", new File("C:/Eclipse Workspace/Java/IEEE2014/Captcha/images/resize.png")); 
 
// 2
		b1=rn.nextInt(max - min + 1) + min;
		b2=rn1.nextInt(max1 - min1 + 1) + min1;
		BufferedImage originalImage1 = ImageIO.read(new File("C:/Eclipse Workspace/Java/IEEE2014/Captcha/images/Timage" + resize[list.get(b1)][b2] + ".png"));
		int type1 = originalImage1.getType() == 0? BufferedImage.TYPE_INT_ARGB : originalImage1.getType();
 
		BufferedImage resizeImagePng1 = resizeImage(originalImage1, type1);
		ImageIO.write(resizeImagePng1, "png", new File("C:/Eclipse Workspace/Java/IEEE2014/Captcha/images/resize1.png")); 
		
// 3
		BufferedImage originalImage2 = ImageIO.read(new File("C:/Eclipse Workspace/Java/IEEE2014/Captcha/images/Timage" + resize[list.get(rn.nextInt(max - min + 1) + min)][rn1.nextInt(max1 - min1 + 1) + min1] + ".png"));
		int type2 = originalImage2.getType() == 0? BufferedImage.TYPE_INT_ARGB : originalImage2.getType();
 
		BufferedImage resizeImagePng2 = resizeImage(originalImage2, type2);
		ImageIO.write(resizeImagePng2, "png", new File("C:/Eclipse Workspace/Java/IEEE2014/Captcha/images/resize2.png")); 

// 4	
		BufferedImage originalImage3 = ImageIO.read(new File("C:/Eclipse Workspace/Java/IEEE2014/Captcha/images/Timage" + resize[list.get(rn.nextInt(max - min + 1) + min)][rn1.nextInt(max1 - min1 + 1) + min1] + ".png"));
		int type3 = originalImage3.getType() == 0? BufferedImage.TYPE_INT_ARGB : originalImage3.getType();
 
		BufferedImage resizeImagePng3 = resizeImage(originalImage3, type3);
		ImageIO.write(resizeImagePng3, "png", new File("C:/Eclipse Workspace/Java/IEEE2014/Captcha/images/resize3.png")); 
	
	}catch(IOException e){
		System.out.println(e.getMessage());
	}
	}
	
	private static BufferedImage resizeImage(BufferedImage originalImage, int type){
		BufferedImage resizedImage = new BufferedImage(IMG_WIDTH, IMG_HEIGHT, type);
		Graphics2D g = resizedImage.createGraphics();
		g.drawImage(originalImage, 0, 0, IMG_WIDTH, IMG_HEIGHT, null);
		g.dispose();
	 
		return resizedImage;
	    }	
	
	
}
