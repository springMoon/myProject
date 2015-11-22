window.onload = function(){
		//get page elements
		//tag tr
		var trs = document.getElementsByTagName("tr");
		var submit = document.getElementById("submit");
		var clear = document.getElementById("clear");
		var random = document.getElementById("random");
		
		var fitnessForm = document.getElementById("fitnessForm");
		var fitnessInput = document.getElementById("fitnessInput");
		//后台传过来的数据，放在fitnessOutput 中
		var fitnessOutput = document.getElementById("fitnessOutput").value;
		//alert(fitnessOutput);
		var lastVal = analysisArray(fitnessOutput);
		//tag th
		var ths;
		//tag td
		var tds = [];
		
		//variable
		var array = new Array(49);
		initArray(array);
		
		
		//event
		for(var i =0; i < trs.length; i++){
			//获取th
			if(i == 0){
				ths = trs[i].getElementsByTagName("th");
			}else{
				var tdss = trs[i].getElementsByTagName("td");
				for(var j =0; j < tdss.length; j++){
					//if(j%8 != 0){
						tdss[j].num = parseInt(lastVal[(i-1)*7+j]);
						tdss[j].style.background = getColorByNum(parseInt(lastVal[(i-1)*7+j]));
						//alert((i-1)*7+j);
						tdss[j].onclick = function(){
							//this.num = i*7+j%8+"";
							//get random number 1 2 3 4 5 6 7
							//var a = getRandom();
							this.num = (++this.num)%7;
							this.style.background = getColorByColor(this.style.background);
							//array[this.num] = a;
						}
					//}
				}
			}
		}
		//submit form
		submit.onclick = function(){
			//showArray();
			//AjaxSubmitArray1();
			fitnessInput.value = formatArray();
			fitnessForm.submit();
		}
		clear.onclick = function(){
			//alert("clear");
			//$("[num]").css("background-color","yellow");
			$("td").css("background-color","white");
//			$("td").num = 0;
			var td = document.getElementsByTagName("td");
			for(var i = 0; i< td.length; i ++){
				td[i].num = 0;
			}
		}
		random.onclick = function(){
			var td = document.getElementsByTagName("td");
			for(var i = 0; i< td.length; i ++){
				var a = getRandom();
				td[i].num = a;
				td[i].style.background = getColorByNum(a);
			}
		}
		
	
	//funciton 
	//format array to String splip by ","
	function formatArray(){
		var str = "";
		var td = document.getElementsByTagName("td");
		for(var i = 0; i< td.length; i ++){
			if (i == array.length -1){
				str += td[i].num;
			}else{
				str += td[i].num+","
			}
		}
		alert(str);
		return str;
	}
	//function analysis String to array
	function analysisArray(fitnessOutput){
		/*var lastValue = new Array();
		 for(var i = 0; i < fitnessOutput.length; i++){
			
		} */
		return fitnessOutput.split(",");
	}
	/*	function AjaxSubmitArray1(){
			alert("send ajax request");
			xmlHttp.open("POST", "fitness.action", true);
		    var text = "uid=1&gid=2";
		    xmlHttp.send(text);
		}*/
	/*function AjaxSubmitArray(){
		alert("ajax");
		$.ajax({
			  type : "POST",
			  url : "fitnessAction.Action",
			  dataType:"json",
			  data:
			  {
			      modName:title
			  },
			  success : function(data){
			   //data = eval('('+data+')');
			      var result = data.rows[0];
			      alert("ajax return ");
			      $('#main-tab').tabs('close',title);
			      openPage(title,'',baseUrl+result.moUrl,null);
			   
			  }
			  });
	}*/
	//init array to 0
	function initArray(arr){
		for(var i = 0; i < arr.length; i++){
			arr[i] = 0;
		}
	}
	//function fun
	function showArray(){
		alert(array);
	}
	//get random number
	function getRandom(){
		return Math.round(Math.random()*7);
	}
	//get color
	function getColorByNum(a){
		
		var color;
		switch(a){
		case 1:
			color = "red";
			break;
		case 2:
			color = "orange";
			break;
		case 3:
			color = "yellow";
			break;
		case 4:
			color = "cyan";
			break;
		case 5:
			color = "green";
			break;
		case 6:
			color = "blue";
			break;
		default:
			color = "purple";
		}
		return color;
	}
function getColorByColor(a){
		
		var color;
		switch(a){
		case "purple":
			color = "red";
			break;
		case "red":
			color = "orange";
			break;
		case "orange":
			color = "yellow";
			break;
		case "yellow":
			color = "cyan";
			break;
		case "cyan":
			color = "green";
			break;
		case "green":
			color = "blue";
			break;
		default:
			color = "purple";
		}
		return color;
	}
}
