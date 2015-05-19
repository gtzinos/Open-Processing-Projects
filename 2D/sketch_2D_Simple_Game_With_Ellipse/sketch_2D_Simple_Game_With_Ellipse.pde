int ball_x=50;
int ball_y=50;

int win_x=1450;
int win_y=375;

int score=0;

void setup() {
   //window size width,height
   size(1500,700);   
}

void defaultDraw() {  
  //white background
   background(255);
   //color perigramatos black
   stroke(0);
   //green color mesa se sxima
   fill(0,255,0);
   //orthogonio green xrwma mesa
   rect(25,25,1450,650);
   
   //enan kiklo sto kedro akribws
   ellipse(750,350,200,200);
   
   //grammi mayrh
   line(750,25,750,675);
   //to epomeno sxima kokkino
   fill(255,0,0);
   //to kokkino balaki nikis
   ellipse(win_x,win_y,50,50);
   //epomeno sxima mauro auto pou kineitai dhladh
   /*
     score font configs
   */
   
  fill(0);  // Black
  textFont(createFont("SansSerif",18));
  textAlign(CENTER);
  //grafoume to score kathe fora
  text("Score : " + score,width / 2, 16);
   
   fill(0);
}

  /*
    an patithike to podiki
    kai ta position ousiastika einai entos tou xwrou
    toy gipedou tote eimaste ok kai thetoume
    ta nea position sthn bala mas
  */
void mousePressed() {
    if(mouseY >= 50 && mouseY <= 650 && mouseX >= 50 && mouseX <= 1450 ) {
     ball_x=mouseX;
     ball_y=mouseY;
   }
}
void draw() {

   /*
   zografizw arxika to background gipedo kai epeita gia
   oso h mpala brisketai entos gipedou anebazoume to 
   x position epomeno phgainei pros ta deksia
  
   */
   if(ball_x < 1450) {
     defaultDraw();
     ellipse(ball_x,ball_y,50,50);
     ball_x++;
   }
   /*
     Alliws an termatisei tote tsekarw an eftase sto
     teliko skopo dhladh sta position 
     ths kokkinhs balas kai etsi 
     kalw thn resetGame na kanei thn
     douleia ths opou perigrafetai parakatw
   */
   else {
     if(ball_x == win_x && ball_y == win_y) {
       resetGame();
     }
   }
}

/*
    etsi emfanizw 
     to neo score se dialog box me java opionpane
     kai epeita afou to auksisw .
     phgainw thn bala pali pisw kai 
     se diaforetiko simeio thn bala stoxou
    
*/
void resetGame() {
  score=score+1;
  //emfanisi minimatos me joptionpane
  javax.swing.JOptionPane.showMessageDialog(null, "You Win " + score + " times !!! Well done admin !!!");

  //paw thn bala pali pisw
  ball_x=50;
  ball_y=50;
  //1450 kateutheian to x win location logo oti thelw na einai sto telos h bala
  win_x=1450;
  //random 50-650 ston y aksona
  win_y=int(random(50,650));
}
