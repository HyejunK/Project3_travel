header{ background-color: #385a45;s}  /*padding: 10px 30px; 을 넣는게 나은지 아닌지 고민*/
header .intro_bg img{width: 100%; height: 600px;}
.introSen{ 
    color: #dbd5d3; 
    font-size: 90px; 
    font-weight: bold;
    position: absolute;
    top: 350px;
    left: 70px;
}
.main{background-color: #385a45; padding:10px 30px;}
.main>h1{
    font-size: 45px;
    text-align: center; 
    color: #a7c299;
    padding-top: 100px;
    padding-bottom: 50px;
}
h3{
    font-size:100px; 
    font-weight: bold; 
    position: absolute; 
    top: 270px;
    right: 40px;
}
p{
    font-size: 26px; 
    position: relative; 
    top: 30; 
    left: 30;
    bottom
}
.mainMenulist{
    display: flex; 
    padding-left:0;
    justify-content: space-around;

}
.mainMenulist>li{position:relative; align-items: center;}
.mainMenulist img{width:450px; height: 450px;}

@media screen and (max-width: 750px){
    header .intro_bg img{width: 100%; height: 350px;}
    .mainMenulist{flex-direction: column;}
    .mainMenulist img{width:100%; height: 300px;}
    .intro_bg{position:relative;}
    .introSen{
        top: 140px; 
        left: 20px;
        font-size: 45px;
        position: absolute;
    }
    h3{position:absolute; top:140px}
    p{font-size: 24px; display: hidden;}        /*여기 왜 안 없어져 ㅋㅋㅋ*/
    .main>h1{
        font-size: 24px;
        padding-top: 30px;
        padding-bottom: 20px;
    } 
}
