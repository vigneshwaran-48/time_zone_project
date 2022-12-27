<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width">
  <title>Time Zone</title>
  <link href="cssfiles/indexstyle.css" rel="stylesheet" type="text/css" />
</head>

<body>
  <header>
    <h1>Time Zone</h1>
  </header>
  <form action="timezone" method="get" class="x-axis-flex">
    <div class="input-ul-wrapper">
      <div>
        <input type="text" name="countryName" id="serach-input">
        <button type="button">Find Time</button>
      </div>
      <ul></ul>
    </div>
  </form>
  <div class="time-display-wrapper">
    <h1>Local Time</h1>
    <div class="time-display">
    	<%
    		String time = (String) request.getAttribute("Time");
    		String country = (String) request.getAttribute("Country");
    		
    		if(time != null && country != null){
    			out.println("<h1 style='margin:10px;'>" + time + "<h1><br>");
    			out.println("<h2>" + country + "</h2>");	
    		}
    	%>
    </div>
  </diV>
  <footer></footer>
</body>
<script src="jsfolder/timezonedata.js"></script>
<script src="jsfolder/indexjs.js"></script>
</html>
