#include <Servo.h> 

//モーション再生用コマンド
//n:正面, l:笑う, s:悲しい, h:はい, f:いいえ
//w:まばたき, b:スマイル, e:ハイテンション
//d:眠い, a:なにそれやりたい, j:怒り



Servo eye_servo;
Servo head_servo;

static int bri = 0;
static int pos = 0;
static int g = 0;
char ch=0;

int eye=11;
int mouse=9;

//音センサ用
int micPin = A0;
int micValue = 0;
int micValue_prev = 0;
int poseCounter = 0;

char command[] = "lshfwbedaj";
int cmdNum = 0;


void setup()
{   
  Serial.begin(9600); 
  eye_servo.attach(2); 
  head_servo.attach(4);
  pinMode(eye, OUTPUT);    
  pinMode(mouse, OUTPUT);   
   
  //基本姿勢
  analogWrite(eye, 100);//PWMで100
  digitalWrite(mouse, LOW);
  eye_servo.write(95 );//目サーボの基本角度
  head_servo.write(90 );//首サーボの基本角度
}


void loop(){
/*  
  if(Serial.available()>0){// 受信したデータが存在するなら	
    ch = Serial.read();// 受信データを読み込んで'ch'に数値を格納する
*/

  micValue = analogRead(micPin);
  Serial.println(micValue);
  delay(500);
//  Serial.println(micValue_prev);
//  Serial.println("-");
  if((poseCounter == 0) && (abs(micValue - micValue_prev) > 20)){
    ch = command[cmdNum];
    if(cmdNum < 9){
      cmdNum ++;
    }else{
      cmdNum = 0;
    }
    
    poseCounter = 5;


  
  //Idole mode
  if (ch == 'i') {
    while(1){
      for ( pos = 90; pos < 110; pos += 1 ) {
           eye_servo.write( pos );
           delay(15 );         
      } ;
      for ( pos = 110; pos > 70; pos -= 1 ) {
           eye_servo.write( pos );
           delay(15 );
      } ;   
      for ( pos = 70; pos < 90; pos += 1 ) {
           eye_servo.write( pos );
           delay(15 );
      } ;   
      //for ( pos = 90; pos < 110; pos += 1 ) {
      for ( pos = 90; pos < 180; pos += 1 ) {
           head_servo.write( pos );
           delay(15 );
      } ;
      //for ( pos = 110; pos > 70; pos -= 1 ) {
      for ( pos = 180; pos > 0; pos -= 1 ) {
           head_servo.write( pos );
           delay(15 );
      } ;   
      //for ( pos = 70; pos < 90; pos += 1 ) {
      for ( pos =0; pos < 90; pos += 1 ) {
           head_servo.write( pos );
           delay(15 );
      } ;       
      if ( Serial.read() == 'c'){
           eye_servo.write(95);
           head_servo.write(90);
           analogWrite(eye, 100);
             digitalWrite(mouse, LOW);
           break;
      }   
    }
  }
  
    switch(ch) {
      
      case '0'...'9':
            g = g * 10 + ch - '0';
      break;
     
      case 'x':
            eye_servo.write( g );
            delay( 15 );      
            g=0;
      break;
 
      case 'y':
           head_servo.write( g );
           delay( 15 );
           g=0;
      break;
     
      case 'z':
            analogWrite(eye,g);
              delay( 15 );
            g=0;
      break;

      case 't':
             digitalWrite(mouse, HIGH); 
        for ( pos = 90; pos < 110; pos += 1 ) {
            eye_servo.write( pos );
            delay( 15 );
        } ;
        for ( pos = 110; pos > 70; pos -= 1 ) {
            eye_servo.write( pos );
            delay( 15 );
        } ;         
        for ( pos = 70; pos < 90; pos += 1 ) {
            eye_servo.write( pos );
            delay( 15 );
        } ;        
        for ( pos = 90; pos < 110; pos += 1 ) {
            head_servo.write( pos );
            delay( 15 );
        } ;
        for ( pos = 110; pos > 70; pos -= 1 ) {
            head_servo.write( pos );
            delay( 15 );
        } ;         
        for ( pos = 70; pos < 90; pos += 1 ) {
            head_servo.write( pos );
            delay( 15 );
        } ;           
      break;

      case 'n': //正面
            analogWrite(eye, 100);
             digitalWrite(mouse, LOW);
            eye_servo.write(95); 
            head_servo.write(90); 
      break;
      
      case 'l': //笑う
            analogWrite(eye, 100);
             digitalWrite(mouse, HIGH);
              eye_servo.write( 120 );
                      delay(100 );
            eye_servo.write( 100 );
                      delay(100 ); 
            eye_servo.write( 120 );
                      delay(100 );
            eye_servo.write( 100 );
                      delay(100 ); 
            eye_servo.write( 120 );
                      delay(100 );
            eye_servo.write( 100 );
                      delay(100 ); 
            eye_servo.write( 120 );
                      delay(100 );
            eye_servo.write( 100 );
                     delay(100 ); 
            eye_servo.write( 120 );
                      delay(100 );
            eye_servo.write( 100 );
                     delay(100 ); 
            eye_servo.write( 120 );
                      delay(100 );
            eye_servo.write( 100 );
                      delay(100 ); 
            eye_servo.write( 120 );
                      delay(100 );
            eye_servo.write( 100 );
                      delay(100 ); 
            eye_servo.write( 120 );
                      delay(100 );
            eye_servo.write( 100 );
                      delay(100 );
            digitalWrite(mouse, LOW);                  
      break;
      
      case 's': //悲しい
         for ( pos = 95; pos > 70; pos -= 1 ) {
            eye_servo.write( pos );
            delay( 15 );
         } ;               
        for ( pos = 100; pos > 20; pos -= 1 ) {
            analogWrite(eye, pos);
            delay( 10);
         } ;
      break;
      
      case 'h': //はい
            analogWrite(eye, 100);
        for ( pos = 95; pos > 70; pos -= 1 ) {
            eye_servo.write( pos );
            delay( 15 );
        } ;         
        for ( pos = 70; pos < 95; pos += 1 ) {
            eye_servo.write( pos );
            delay( 15 );
            eye_servo.write( pos );
            delay( 15 );
        } ;       
        for ( pos = 95; pos > 70; pos -= 1 ) {
            eye_servo.write( pos );
            delay( 15 );
        } ;         
        for ( pos = 70; pos < 95; pos += 1 ) {
            eye_servo.write( pos );
            delay( 15 );
            eye_servo.write( pos );
            delay( 15 );
        } ;          
      break;
      
      case 'f': //いいえ
            analogWrite(eye, 100);
        for ( pos = 90; pos < 130; pos += 1 ) {
            head_servo.write( pos );
            delay( 15 );       
        } ;
        for ( pos = 130; pos > 50; pos -= 1 ) {
            head_servo.write( pos );
            delay( 15 );    
        } ;         
        for ( pos = 50; pos < 90; pos += 1 ) {
            head_servo.write( pos );
            delay( 15 );      
        } ;               
        /*
        for ( pos = 130; pos > 90; pos -= 1 ) {
            head_servo.write( pos );
            delay( 15 );        
         } ;         
        */
      break;
      
      case 'w': //まばたき（旧ウインク）
            digitalWrite(eye, 100);
             delay( 500 );
            digitalWrite(eye, 100);
            delay( 500 );
            digitalWrite(eye,LOW);
            delay( 500 );
            digitalWrite(eye, 100);
      break;

      case 'b': //スマイル  
        for ( ch = 0; ch <2; ch += 1 ) {   
            digitalWrite(eye, 100);
             delay( 300 );
            digitalWrite(eye, LOW);
             delay( 300 );  
        }
            digitalWrite(eye, 100);
       break;
      
      case 'e':  //ハイテンション
        for ( ch = 0; ch <5; ch += 1 ) {         
              digitalWrite(mouse, HIGH);
             digitalWrite(eye, 100);
            delay( 100 );
            digitalWrite(eye, LOW);
              delay( 100 ); 
            eye_servo.write(random(90,110) );   
            head_servo.write(random(30,150) ); 
            delay( 100 );
            digitalWrite(eye, 100);
             delay( 100 );  
              digitalWrite(mouse, LOW);
              delay( 100 ); 
        }                    
            eye_servo.write(95);
            head_servo.write(90);
            analogWrite(eye, 100);
              digitalWrite(mouse, LOW);        
      break;  
      
      //★追加した動き-始まり
      //眠い
      case 'd': 
        for ( pos = 100; pos >= 5; pos -= 1 ) {   
            analogWrite(eye, pos);
             delay( 10);
        }
        for ( pos = 10; pos <= 100; pos += 1 ) {   
            analogWrite(eye, pos);
            delay( 10 ); 
        }
        for ( pos = 100; pos >= 5; pos -= 1 ) {   
            analogWrite(eye, pos);
             delay( 10 );
        }
        for ( pos = 5; pos <= 100; pos += 1 ) {   
            analogWrite(eye, pos);
             delay( 5 ); 
        }
        for ( pos = 100; pos >= 20; pos -= 1 ) {   
            analogWrite(eye, pos);
             delay( 15 );
        }
        for ( pos = 20; pos >= 0; pos -= 1 ) {   
            analogWrite(eye, pos);
             delay( 100 );
        }
        for ( pos = 95; pos >= 70; pos -= 1 ) {
            eye_servo.write( pos );
            delay( 200 );
         }
        analogWrite(eye, 100);
         for ( pos = 70; pos <= 95; pos += 1 ) {
            eye_servo.write( pos );
            delay( 10 );
        }  
        for ( pos = 90; pos < 110; pos += 1 ) {
            head_servo.write( pos );
            delay( 3 );
        }
        for ( pos = 110; pos > 70; pos -= 1 ) {
            head_servo.write( pos );
            delay( 3 );
        }
        for ( pos = 70; pos < 90; pos += 1 ) {
            head_servo.write( pos );
            delay( 3 );
        } ;        
      break;
      
      //何それやりたい
      case 'a': 
            for ( pos = 0; pos<=3; pos += 1 ) { 
            analogWrite(eye, 0);
             delay( 50 ); 
            analogWrite(eye, 255);
            delay( 50 );
            }
            for ( bri = 0; bri<=6; bri += 1 ) { 
             digitalWrite(mouse, HIGH);  
            delay(random(50,200)); 
             digitalWrite(mouse, LOW);
            delay( random(20,80) );
            }
            for ( pos = 0; pos<=3; pos += 1 ) { 
            eye_servo.write( 120 );
                      delay(100 );
            eye_servo.write( 70 );
                      delay(100 ); 
            }
        analogWrite(eye, 100);
         eye_servo.write( 95 );
      break;
      
      //怒り
      case 'j':
            for ( pos = 100; pos >= 3; pos -= 1 ) {   
            analogWrite(eye, pos);
             delay(5); 
            }
            delay(2000);
            for ( pos = 3; pos <= 255; pos += 1 ) { 
            pos = pos * 1.04;
            if(pos > 255){
            pos = 255;
            }
            analogWrite(eye, pos); 
             delay( 30 ); 
            }
            for ( bri = 0; bri<=10; bri += 1 ) { 
             digitalWrite(mouse, HIGH);  
            delay(random(50,80)); 
            digitalWrite(mouse, LOW);
            delay( random(20,50) );
            }
            eye_servo.write( 120 );
                      delay(100 );
            head_servo.write( 50 );
                      delay(100 );
            for ( bri = 0; bri<=5; bri += 1 ) {
              digitalWrite(mouse, HIGH);  
            delay(random(50,80)); 
              digitalWrite(mouse, LOW);
            delay( random(20,50) );
            }
      break;
      //★追加した動き-終わり
      
      default:
            eye_servo.write(95);
            head_servo.write(90);
            analogWrite(eye, 100);
              digitalWrite(mouse, LOW);
      break;
    }
    
    }
    
    else{
    if(poseCounter > 0){
      poseCounter --;
    }
    micValue_prev = micValue;
  }
  
}

