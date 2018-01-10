// JavaScript Document
//根据传入的checkbox的选中状态设置所有checkbox的选中状态
    function selectAll(obj){
		
        var allInput = document.getElementsByTagName("input");
       
        var loopTime = allInput.length;
        for(i = 0;i < loopTime;i++)
        {
            if(allInput[i].name == "select")
            {
                allInput[i].checked = obj.checked;
            }
        }
    }
	
	//判断全选按钮的选中状态
	function selectSimple(){
		var allSelect = document.getElementsByName("select");
		var length = allSelect.length;
		var num = 0;
		
		for(i = 0;i < length;i++){
        	if(allSelect[i].checked){
				num ++;
			}	
        }
		
		if(num == length){
			document.getElementById("chk_SelectALL").checked = true;
		}else{
			document.getElementById("chk_SelectALL").checked = false;
		}
	}