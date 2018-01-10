// JavaScript Document
function movetext(){
var dome = document.getElementById("dome");
var dome1 = document.getElementById("dome1");
var dome2 = document.getElementById("dome2");

	dome2.innerHTML=dome1.innerHTML;
	if(dome1.offsetHeight-dome.scrollTop<=0) 
       dome.scrollTop-=dome1.offsetHeight ;
    else{
       dome.scrollTop++;
     }
}
var MyMar=setInterval("movetext()",50) 
function over(){
	clearInterval(MyMar);
}
function may(){
	MyMar=setInterval("movetext()",50);
}


$(function() { 
           $("#chk_SelectALL").click(function() { 
               $('input[name="selectSub"]').attr("checked",this.checked);  
           }); 
           var $subBox = $("input[name='selectSub']"); 
           $subBox.click(function(){ 
               $("#chk_SelectALL").attr("checked",$subBox.length == $("input[name='selectSub']:checked").length ? true : false); 
           }); 
		   
		   
        });

function closeWarning(){
			document.getElementById("warning").style.display = 'none';
		}