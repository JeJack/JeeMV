/**
 * Created by qiuje on 2017/6/18.
 */
function button1(){
    var element=document.getElementById('myimage');
    element.src="images/valley.jpg";
}
function button2(){
    var element=document.getElementById('myimage');
    element.src="images/river.jpg";
}
function button3(){
    var element=document.getElementById('myimage');
    element.src="images/morning.jpg";
}
function autoChange(countS){
    if(countS==1){
        button1();
        countS=2;
    }
    else if(countS==2){
        button2();
        countS=3;
    }
    else if(countS==3){
        button3();
        countS=1;
    }
    return countS;
}