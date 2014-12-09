#include <Servo.h>//arduinoでサーボを動かすための宣言みたいなものです。

//モーション再生用コマンド
//n:正面, l:笑う, s:悲しい, h:はい, f:いいえ
//w:まばたき, b:スマイル, e:ハイテンション
//d:眠い, a:なにそれやりたい, j:怒り


//arduinoに接続するピンの番号を指定する。
Servo eye_servo;//縦方向移動サーボに名前をつけた
Servo head_servo;//横方向移動サーボに名前をつけた
int l_eye=11;
int r_eye=13;
int l_mouse=7;
int m_mouse=9;
int r_mouse=8;

//数値や文字の入れ物として利用される。最初は0に設定。
static int bri = 0;
static int pos = 0;
static int g = 0;
char ch=0;

//初期設定
void setup()
{ 
  //USBでarduinoと通信するために書く  
  Serial.begin(9600);
  
  //サーボのピン番号  
  eye_servo.attach(2); //縦方向(目)のサーボ、2ピンに接続
  head_servo.attach(4);//縦方向(首)のサーボ、4ピンに接続
   
  //顔のLEDを出力にする
  pinMode(l_eye, OUTPUT);    
  pinMode(r_eye, OUTPUT);  
  pinMode(l_mouse, OUTPUT);  
  pinMode(m_mouse, OUTPUT);   
  pinMode(r_mouse, OUTPUT); 
   
  //顔の初期状態。目だけ点灯、口は消灯
  analogWrite(l_eye, 100);//PWMで100
  analogWrite(r_eye, 100);//PWMで100
  digitalWrite(l_mouse, LOW);
  digitalWrite(m_mouse, LOW);
  digitalWrite(r_mouse, LOW); 
  //サーボの初期状態
  eye_servo.write(95 );//目サーボの基本角度
  head_servo.write(90 );//首サーボの基本角度
}

//この後のコードを繰り返す
void loop(){
  if(Serial.available()>0){// 受信したデータが存在するなら	
    ch = Serial.read();// 受信データを読み込んで'ch'に数値を格納する

  //スタート時に一回だけ動く？ 
  //Idole mode
  if (ch == 'i') {
    while(1){
      //目サーボを上下させて基本ポジションへ
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
      //首サーボを左右させて基本ポジションへ      
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
      //基本ポジションに戻す
      if ( Serial.read() == 'c'){
           eye_servo.write(95);
           head_servo.write(90);
           analogWrite(l_eye, 100);
           analogWrite(r_eye, 100);
           digitalWrite(r_mouse, LOW);
           digitalWrite(l_mouse, LOW);
           digitalWrite(m_mouse, LOW);
           break;
      }//if'c'の終わり     
    }//whileの終わり
  }//if'i'の終わり

    //switchはcaseのどれかに当てはまったらそれを実行。なければdefaultを実行。
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
            analogWrite(l_eye,g);
            analogWrite(r_eye,g);
            delay( 15 );
            g=0;
      break;

      //正面
      case 't':
            //口を点灯
            digitalWrite(l_mouse, HIGH);
            digitalWrite(m_mouse, HIGH);
            digitalWrite(r_mouse, HIGH);
        //サーボをそれぞれ20ずつ上下左右させて基本ポジションへ戻す 
        //目サーボ    
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
        //首サーボ        
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

      //停止
      //'n'は基本ポジションに戻す
      case 'n':
            analogWrite(l_eye, 100);
            analogWrite(r_eye, 100);
            digitalWrite(r_mouse, LOW);
            digitalWrite(l_mouse, LOW);
            digitalWrite(m_mouse, LOW);
            eye_servo.write(95); 
            head_servo.write(90); 
      break;
      
      //笑う   
      case 'l':
            //目と口が同時に点灯
            analogWrite(l_eye, 100);
            analogWrite(r_eye, 100);      
            digitalWrite(l_mouse, HIGH);
            digitalWrite(m_mouse, HIGH);
            digitalWrite(r_mouse, HIGH);
            //目サーボの動き
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
            //口だけ消灯
            digitalWrite(r_mouse, LOW);
            digitalWrite(l_mouse, LOW);
            digitalWrite(m_mouse, LOW);                  
      break;
      
      //悲しい
      //'s'は目サーボだけ下方に動かし、目LEDが段々と暗くなる。
      case 's':
         for ( pos = 95; pos > 70; pos -= 1 ) {
            eye_servo.write( pos );
            delay( 15 );
         } ;               
        for ( pos = 100; pos > 20; pos -= 1 ) {
            analogWrite(l_eye, pos);
            analogWrite(r_eye, pos);
            delay( 10);
         } ; 
      break;
      
      //はい
      //'h'は目が光って、目サーボのみ移動する
      case 'h': 
            //目のLEDのみ光る
            analogWrite(l_eye, 100);
            analogWrite(r_eye, 100);
        //目サーボの動き
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
      
      // いいえ
      //'f'は目LEDのみ光り、首サーボのみ動く 
      case 'f':
            //目のLEDのみ光る。
            analogWrite(l_eye, 100);
            analogWrite(r_eye, 100);
        //首のサーボのみ動く   
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

      //ウィンク
      //'w'は1回ずつ目LEDが交互に点滅。
      case 'w':
            digitalWrite(l_eye, 100);
            digitalWrite(r_eye, LOW);
            delay( 500 );
            digitalWrite(l_eye, 100);
            digitalWrite(r_eye, 100);
            delay( 500 );
            digitalWrite(l_eye,LOW);
            digitalWrite(r_eye, 100);
            delay( 500 );
            digitalWrite(l_eye, 100);
            digitalWrite(r_eye, 100);
      break;

      //スマイル
      //'b'は目LEDが2回だけ目が交互に点灯
      case 'b':       
        for ( ch = 0; ch <2; ch += 1 ) {   
            digitalWrite(l_eye, 100);
            digitalWrite(r_eye, LOW);
            delay( 300 );
            digitalWrite(l_eye, LOW);
            digitalWrite(r_eye, 100);
            delay( 300 );  
        }
            digitalWrite(l_eye, 100);
            digitalWrite(r_eye, 100);          
      break;
      
      //ハイテンション
      //'e'は目が点滅したまま、目サーボと首サーボがランダムに動く
      case 'e': 
        //口が光ったまま、目LEDが交互に点滅。 
        for ( ch = 0; ch <5; ch += 1 ) {         
            digitalWrite(l_mouse, HIGH);
            digitalWrite(m_mouse, HIGH);
            digitalWrite(r_mouse, HIGH);           
            digitalWrite(l_eye, 100);
            digitalWrite(r_eye, LOW);
            delay( 100 );
            digitalWrite(l_eye, LOW);
            digitalWrite(r_eye, 100);
            delay( 100 ); 
            //縦と横のサーボがランダムに動く
            eye_servo.write(random(90,110) );   
            head_servo.write(random(30,150) ); 
            delay( 100 ); 
            //目が点灯し、口は消灯。
            digitalWrite(l_eye, 100);
            digitalWrite(r_eye, 100);
            delay( 100 );  
            digitalWrite(l_mouse, LOW);
            digitalWrite(m_mouse, LOW);
            digitalWrite(r_mouse, LOW);  
            delay( 100 ); 
        }                    
            //基本ポジションに戻す
            eye_servo.write(95);
            head_servo.write(90);
            analogWrite(l_eye, 100);
            analogWrite(r_eye, 100);
            digitalWrite(r_mouse, LOW);
            digitalWrite(l_mouse, LOW);
            digitalWrite(m_mouse, LOW);        
      break;  
      
      //★追加した動き-始まり
      //眠い
      case 'd': 
        for ( pos = 100; pos >= 5; pos -= 1 ) {   
            analogWrite(l_eye, pos);
            analogWrite(r_eye, pos);
            delay( 10);
        }
        for ( pos = 10; pos <= 100; pos += 1 ) {   
            analogWrite(l_eye, pos);
            analogWrite(r_eye, pos);
            delay( 10 ); 
        }
        for ( pos = 100; pos >= 5; pos -= 1 ) {   
            analogWrite(l_eye, pos);
            analogWrite(r_eye, pos);
            delay( 10 );
        }
        for ( pos = 5; pos <= 100; pos += 1 ) {   
            analogWrite(l_eye, pos);
            analogWrite(r_eye, pos);
            delay( 5 ); 
        }
        for ( pos = 100; pos >= 20; pos -= 1 ) {   
            analogWrite(l_eye, pos);
            analogWrite(r_eye, pos);
            delay( 15 );
        }
        for ( pos = 20; pos >= 0; pos -= 1 ) {   
            analogWrite(l_eye, pos);
            analogWrite(r_eye, pos);
            delay( 100 );
        }
        for ( pos = 95; pos >= 70; pos -= 1 ) {
            eye_servo.write( pos );
            delay( 200 );
         }
        analogWrite(l_eye, 100);
        analogWrite(r_eye, 100);     
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
            analogWrite(l_eye, 0);
            analogWrite(r_eye, 0);
            delay( 50 ); 
            analogWrite(l_eye, 255);
            analogWrite(r_eye, 255);
            delay( 50 );
            }
            for ( bri = 0; bri<=6; bri += 1 ) { 
            digitalWrite(r_mouse, HIGH);
            digitalWrite(l_mouse, HIGH);
            digitalWrite(m_mouse, HIGH);  
            delay(random(50,200)); 
            digitalWrite(r_mouse, LOW);
            digitalWrite(l_mouse, LOW);
            digitalWrite(m_mouse, LOW);
            delay( random(20,80) );
            }
            for ( pos = 0; pos<=3; pos += 1 ) { 
            eye_servo.write( 120 );
                      delay(100 );
            eye_servo.write( 70 );
                      delay(100 ); 
            }
        analogWrite(l_eye, 100);
        analogWrite(r_eye, 100); 
        eye_servo.write( 95 );
      break;
      
      //怒り
      case 'j':
            for ( pos = 100; pos >= 3; pos -= 1 ) {   
            analogWrite(l_eye, pos);
            analogWrite(r_eye, pos);
            delay(5); 
            }
            delay(2000);
            for ( pos = 3; pos <= 255; pos += 1 ) { 
            pos = pos * 1.04;
            if(pos > 255){
            pos = 255;
            }
            analogWrite(l_eye, pos); 
            analogWrite(r_eye, pos);
            delay( 30 ); 
            }
            for ( bri = 0; bri<=10; bri += 1 ) { 
            digitalWrite(r_mouse, HIGH);
            digitalWrite(l_mouse, HIGH);
            digitalWrite(m_mouse, HIGH);  
            delay(random(50,80)); 
            digitalWrite(r_mouse, LOW);
            digitalWrite(l_mouse, LOW);
            digitalWrite(m_mouse, LOW);
            delay( random(20,50) );
            }
            eye_servo.write( 120 );
                      delay(100 );
            head_servo.write( 50 );
                      delay(100 );
            for ( bri = 0; bri<=5; bri += 1 ) {
            digitalWrite(r_mouse, HIGH);
            digitalWrite(l_mouse, HIGH);
            digitalWrite(m_mouse, HIGH);  
            delay(random(50,80)); 
            digitalWrite(r_mouse, LOW);
            digitalWrite(l_mouse, LOW);
            digitalWrite(m_mouse, LOW);
            delay( random(20,50) );
            }
      break;
      //★追加した動き-終わり
      
      //どの'case'にも当てはまらない場合はdefaultになる
      default:
           //基本の状態に戻る
            eye_servo.write(95);
            head_servo.write(90);
            analogWrite(l_eye, 100);
            analogWrite(r_eye, 100);
            digitalWrite(r_mouse, LOW);
            digitalWrite(l_mouse, LOW);
            digitalWrite(m_mouse, LOW);
      break;
    }//switch(ch)の終わり
  }//if(Serial.available()>0)の終わり
}//loopの終わり

