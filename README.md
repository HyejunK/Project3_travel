body{margin: 0;}    /*font-family지정 필요*/
a{text-decoration: none; color: #dbd5d3;}
.navbar{
    display: flex;
    justify-content: space-between;
    align-items: center;
    background-color: #385a45;
    padding: 8px 12px
    position: fixed;
    top: 0; /*position과 top은 네비게이션바를 최상단에 고정하기 위함, 불필요하면 두 개는 삭제*/
    width: 100%;
}
.navbar_logo{color: #a7c299; left: 50px;}
.navbar_menu{
    display: flex;
    list-style: none;
    padding-left: 0;
}
.navbar_menu li{
    padding: 8px 12px;
    display: inline-block;  /*불필요할 시 display, vertical-align을 삭제해본다*/
    vertical-align: top;
}
.navbar_subMenu{list-style: none; display: none;}
.navbar_menu li:hover{background-color: #5c8868; border-radius: 4px;}
.navbar_toggleBn{
    position: absolute;
    right: 25px;
    color:#a7c299;
    display: none;
}
@media screen and (max-width: 750px){
    .navbar{
        flex-direction: column;
        align-items: flex-start;
        padding: 8px 24px;
    }
    .navbar_menu{
        flex-direction: column;
        align-items: center;
        width: 100%;
        display: none;
    }
    .navbar_menu li{width: 100%; text-align: center;}
    .navbar_toggleBn{display: block;}
    .navbar_menu.active{display: flex;}
}
