function loginBtn(){
	
	var id= document.getElementById('id').value;
	var pw= document.getElementById('pw').value;
	var remember_userId = document.getElementById('remember_userId').checked;
	
	$.ajax({
		type : 'post', 
		url : '/login',
		data :{
			id : id,
			pw : pw,
			remember_userId : remember_userId
		},
		success : function(data){
			alert(data);
		},
		error : function(){
			alert("error");
		}
		
	})
	
	
}

function checkbox(checkedData){
	/*var checked = document.getElementById('checked').checked;*/
	var checked = document.getElementById('checkedLogin').checked;
	var id= document.getElementById('id').value;
	
	
	
	if(checked==true){
			$.ajax({
		type : 'get',
		url : '/login',
		data : {
			id : id,
			checked : checked
		},
		success : function(result){
			
		},
		error : function(){
			alert("error");
		}
	})
	} else if(checked == false){
		var id="";
	$.ajax({		
		type : 'get',
		url : '/login',
		data : {
			id : id,
			checked : checked
		},
		success : function(result){
			
		},
		error : function(){
			alert("error");
		}
	})
	}

}