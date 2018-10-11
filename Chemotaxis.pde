 //declare bacteria variables here   
 Bacteria [] tri;

 void setup()   
 {     
  size(600,600);

  tri=new Bacteria[100];

  for(int i=0;i<tri.length;i++){

    tri[i]=new Bacteria();

  }
  
 }   

 void draw()   
 {    
   background(10,60,100);
   
   for(int i=0;i<tri.length;i++){
     
     tri[i].show();
     tri[i].move();
   }

 }  

 class Bacteria    
 {
   int myX,myY,r;

   Bacteria(){
     myX=300;
     myY=300;
     r=(int)(Math.random()*254)+1;
   }
 
   void show(){
     noStroke();
     fill(0,r,0);
     ellipse(myX,myY,20,20);

   } 

   void move(){
     myX=myX+(int)(Math.random()*11)-5;
     if(myX>=600){
       myX-=5;
     }else if(myX<=0){
       myX+=5;
     }
     
     myY=myY+(int)(Math.random()*11)-5;
     if(myY>=600){
       myY-=5;
     }else if(myY<=0){
       myY+=5;
     }
     
   }
   
 }
