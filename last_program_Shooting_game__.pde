/*岸本大河
 11671045*/

int bullet = 0 ;//ショット数
int score = 20;//スコア
int scoreC = 0;
int hit = 0;//ヒット数
float [] zx=new float[10];//ターゲットx座標
float [] zy=new float[10];//ターゲットy座標
int gamemode;
void setup()
{
  size(1250, 700);//描画サイズ
  gamemode=1;//初期スタート画面
  for (int i=0; i<10; i++)
  {
    zx[i]=random(150, width-150);//ターゲットのランダム生成
    zy[i]=random(100, height-100);//ターゲットのランダム生成
  }
}

void draw()

{ 
  /*if(mousePressed)
   {frameRate(3);}
   else
   {frameRate(60);}*/
  if (gamemode==1)
  {
    background(0);


    textAlign(CENTER);

    fill(255);
    textSize(100);
    text("Shooting_GAME:", width/2, 200);//タイトル
    textSize(70);
    text("SCORE:"+str(scoreC), width/2, 330);//スコア

    fill(255);
    text("START GAME", width/2, height/2+100);//スタートボタン
    noFill();
    stroke(255);
    rect(width/2-350, height/2, 700, 130);
    textSize(30);
    text("programmer:tiger", width/2, height/2+200);//名前

    if (mouseX>width/2-350 && mouseX<width/2+350)
    {
      if (mouseY>height/2 && mouseY<height/2+130)

      {
        if (mousePressed)
        {
          if (gamemode==1)
          {
            gamemode=2;
          }//ゲームスタート
        }
      }
    }
  }

  if (gamemode==2)//ゲーム画面
  {
    background(255);//,
    strokeCap(SQUARE);//図形の端形
    strokeWeight(2);
    //fill(255, 0, 0);
    //ellipse(mouseX+tx,mouseY+ty,50,50);//terget
    fill(255, 0, 0);//ターゲットの色

    for (int j=0; j<10; j++)
    {
      ellipse(625-mouseX+zx[j], 350-mouseY+zy[j], 50, 50);//ターゲットの移動
      ellipse(50+(625-mouseX+zx[j])/6.2, 50+(350-mouseY+zy[j])/6.2, 5, 5);//ターゲットの移動
    }

    strokeWeight(25);
    noFill();
    stroke(100);
    ellipse(width/2, height/2, 625, 625);//サイト


    stroke(0, 0, 255);
    arc(width/2, height/2, 625, 625, radians(mouseY/2), radians(mouseX/3.47));
    arc(width/2, height/2, 625, 625, radians(mouseX/3.47), radians(mouseY/2));//サイトデザイン

    stroke(255, 0, 0);
    arc(width/2, height/2, 625, 625, radians(360)-radians(mouseY/2), radians(360)-radians(mouseX/3.47));
    arc(width/2, height/2, 625, 625, radians(360)-radians(mouseX/3.47), radians(360)-radians(mouseY/2));//サイトデザイン

    stroke(0, 255, 0);
    arc(width/2, height/2, 625, 625, radians(180)-radians(mouseY/2), radians(180)-radians(mouseX/3.47));
    arc(width/2, height/2, 625, 625, radians(180)-radians(mouseX/3.47), radians(180)-radians(mouseY/2));//サイトデザイン

    stroke(0);
    ellipse(width/2, height/2, 600, 600);//サイト
    stroke(100);
    strokeWeight(1.25);
    stroke(0);

    line(450, height/2, 800, height/2);//サイト
    line(width/2, 150, width/2, 540);
    fill(255);
    beginShape();
    vertex(width/2-10, 130);
    vertex(width/2+10, 130);
    vertex(width/2+10, 130+50);
    vertex(width/2, 130+65);
    vertex(width/2-10, 130+50);
    endShape(CLOSE);//サイト

    beginShape();
    vertex(420, height/2-10);
    vertex(420, height/2+10);
    vertex(420+50, height/2+10);
    vertex(420+65, height/2);
    vertex(420+50, height/2-10);
    endShape(CLOSE);//サイト

    beginShape();
    vertex(830, height/2-10);
    vertex(830, height/2+10);
    vertex(830-50, height/2+10);
    vertex(830-65, height/2);
    vertex(830-50, height/2-10);
    endShape(CLOSE);//サイト

    line(width/2, 540, width/2-30, 570);
    line(width/2, 540, width/2+30, 570);
    line(width/2-50, 525, width/2+50, 525);
    line(width/2-65, 500, width/2+65, 500);
    line(width/2-50, 475, width/2+50, 475);
    line(width/2-25, 450, width/2+25, 450);//サイト


    for (int i =500; i< 751; i+=25)
    {
      line(i, height/2+3, i, height/2-3);
    }
    for (int i =225; i< 351; i+=25)
    {
      line(width/2+3, i, width/2-3, i);
    }//サイト


    textAlign(LEFT);
    stroke(0);
    noFill();
    strokeWeight(400);
    ellipse(width/2, height/2, 1050, 1050);//サイト
    fill(0);
    PFont font;
    font =loadFont("Algerian-48.vlw");//フォント
    textFont(font, 25);
    text("tiger", width/2-30, 470);//サイト

    strokeWeight(1);
    fill(255);
    rect(50, 50, 200, 150);//マップ
    for (int j=0; j<10; j++)
    {
      fill(0);
      ellipse(50+(625-mouseX+zx[j])/6.2, 50+(350-mouseY+zy[j])/6.2, 5, 5);//map
    }//マップ ターゲット
    strokeWeight(2);
    stroke(255, 0, 0);
    noFill();
    rect(50+mouseX/12.64, 50+mouseY/9.33, 100, 75);//マップ 現在地


    fill(255);
    stroke(0);
    beginShape();
    vertex(300, 600);
    vertex(250, 550);
    vertex(50, 550);
    vertex(50, 650);
    vertex(250, 650);
    vertex(300, 600);
    vertex(50, 600);
    endShape(CLOSE);//スコア１

    beginShape();
    vertex(50, 48);
    vertex(50, 30);
    vertex(100, 30);
    vertex(130, 48);
    endShape(CLOSE);//マップ


    beginShape();
    vertex(850, 650);
    vertex(900, 600);
    vertex(1200, 600);
    vertex(1150, 650);
    endShape(CLOSE);//

    beginShape();
    vertex(900, 50);
    vertex(1000, 150);
    vertex(1200, 150);
    vertex(1200, 50);
    endShape(CLOSE);//スコア２

    stroke(255);
    line(1205, 600, 1155, 650);//デザイン

    fill(0);
    textSize(40);
    text(str(bullet)+" /20 shot", 70, 595);//撃数
    text(str(hit)+" hit", 70, 645);//ヒット数
    textSize(45);
    text(str(score), 1000, 100);//スコア
    textSize(30);
    text(" point", 1080, 140);//ポイント
    fill(0, 0, 255);
    textSize(20);
    text(" map", 50, 47);//マップ
    fill(255, 0, 0);
    textSize(20);
    fill(0);
    text("2016/7/11", 970, 630);
    text("tiger@koneko59", 950, 650);
    for (int j=0; j<10; j++)
    {
      if (dist(width/2, height/2, 625-mouseX+zx[j], 350-mouseY+zy[j])<25)
      {//text("lock on", 900, 650);

        text("lock on", 625-mouseX+zx[j]-30, 350-mouseY+zy[j]-25);
      }//マップ＆lock on
    }
    if (bullet==19)

    {
      scoreC=score;
    }


    if (bullet>20)//ゲーム終了処理
    {
      gamemode=1;
      bullet=0;
      score=0;
      hit=0;
    }
  }
}

void mouseClicked()
{ 


  if (gamemode==2)
  {
    bullet+=1;
    for (int j=0; j<10; j++)
    {
      if (dist(width/2, height/2, 625-mouseX+zx[j], 350-mouseY+zy[j])<25)//当たり判定
      {
        hit+=1;
        score+=1000;
        zx[j]=random(300, width-300);
      }
    }
    score-=bullet*20;
    strokeWeight(4);
    fill(255, 255, 0, 100);
    ellipse(width/2, height/2, 600, 600);//発砲
  }
}