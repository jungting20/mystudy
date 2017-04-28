<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function send(){
		if(typeof EventSource != 'undefined'){
			
			var evt = new EventSource("target.jsp");
			console.log(evt)
			evt.onmessage = function(event){
				console.log(event);
				document.getElementById("result").innerHTML += event.data;
			};
			evt.onopen=function(event){
				document.getElementById("result").innerHTML +="onopen";
			};
			
			document.getElementById("result").innerHTML="지원함";			
		}else{
			document.getElementById("result").innerHTML="지원안함";
		}
		
	}

</script>
</head>

<body>

<div id="result"></div>
<button id="send" onclick="send()">send</button>
</body>
</html>