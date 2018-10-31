<html>
<head>
<script language="javascript">
function fun1(f1)
{
	if(document.f1.t1.value=="")
	{
		alert("U HAVE TO ENTER USERNAME");
		document.f1.t1.focus();
		return false;
	}
if(document.f1.t2.value=="")
	{
		alert("U HAVE TO ENTER PASSWORD");
		document.f1.t2.focus();
		return false;
	}
	if(document.f1.t2.value.length<4)
	{
		alert("PASSWORD SHOULD be >4 ");
		document.f1.t2.focus();
		return false;
	}
	
}
</script>

<title> login </title>
</head>
<BODY bgColor=#00b0e0><br><br><br><br>
<img src="C:\Users\hp\Desktop\1919\apache-tomcat-9.0.10\webapps\images\753039_53000492[1].jpg" width=300 height=280 align="right">
<form name=f1  method="post" action="login1.jsp" onSubmit="return fun1(this)">
<table border=1 width=200 align="left">
 <td>
<pre>
         <center><h3><b>LOGIN FORM</b></h3></center>
         
  USER NAME          :        <input type=text  name="t1">

  PASSWORD           :        <input type=password name="t2">

  DESIGNATION        :        <select name="type">
                                                   <option>vendor</option>
                                                   <option>cargomanager</option>
                                                   <option>inspectionmanager</option>
                                                   <option>storagemanager</option>   
                                                   <option>billpayable</option>
                                                   <option>manufacturer</option>    
                                                     </select><br>


              <input type="submit" value=SUBMIT  NAME=sub>

</pre>
</td>
</table>
</form>


</body>
</html>

                        
                       
 