int x_pos=0;//x aksonas o panw deksia
int y_pos=0; // y aksonas o katw aristera
int swidth=700; //window width size
int sheight=700; //window height size
int rect_w=50; //rect width size
int rect_h=50; // rect height size
int back_color=0; //background color
//kaleitai mia fora 
void setup() {
  size(swidth,sheight); //arxikopoioume to window size
  background(back_color); //thetw mauro back ground gia arxh
 
}
//kaleitai sinexeia efoson de ektelestei no loop
void draw() {
  //thetw background color ksana kathe epanalipsi
  //opou katharizw etsi kai to screen
  
  //an to xrwma de exei ksefuge apo to 255 anebazw
  if(back_color < 255) {
          back_color=back_color+1;
   }
   //alliws to meinw
   else {
      back_color=0;
   } 
  
  /*
    twra an to position x-paxos de kseperase thn akri
    toy parathirou tote anebazw to x opote paei pros ta deksia
    to koutaki mas
  */
  if(x_pos + rect_w < swidth && y_pos == 0) {
    
    x_pos = x_pos + 1;
  }
  /*
    an pleon exei paei terma deksia kai to y+ipsos de
    exei ftasei akoma terma katw sthn deksia gonia 
    tote auksanw y opote paei katw deksia
  */
  else if (y_pos + rect_h < sheight && x_pos + rect_w == 700) {
    y_pos = y_pos + 1; 
  }
  /*
    an de bei sta prwta dio tote o kivos mas 
    vrisketai terma katw terma deksia opote
    meiwnw to x mexri na paei terma aristera sthn gonia
    epomeno to x tha einai 0 logo oti x einai to terma
    panw terma aristera simeio apo ton kivo de xreiazetai na 
    meiosoume to paxos efoson tinoume me thn korifi toy
  */
  else if (x_pos > 0) {
    x_pos = x_pos - 1; 
  }
  /* 
    epeita efoson o kivos ftasei pleon sto terma katw 
    terma aristera simeio auto poy exoume na kanoume einai na 
    meiosoume pleon ton aksona y gia na anevei pali panw kai 
    i diadikasia na ekteleite ep apeirou
  */
  else if(y_pos > 0) {
     y_pos = y_pos - 1;      
  }
  /*
    me vash tous panw upologismous to xrwma kathws kai to
    sxima ksekinane na zografizontai
    
  */

  background(back_color);
  rect(x_pos,y_pos,rect_w,rect_h);
  
}
