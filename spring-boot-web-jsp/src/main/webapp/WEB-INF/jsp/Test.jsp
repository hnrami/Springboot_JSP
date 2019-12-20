<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>   
<html>   
  
<head>  
    <title>  
        How to convert JSON data to a 
        html table using JavaScript ? 
    </title> 
      
    <script src= 
"https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"> 
    </script> 
</head>  
  
<body style = "text-align:center;" id = "body">   
      
  
      
    <p id = "GFG_UP" style =  
        "font-size: 15px; font-weight: bold;"> 
    </p> 
      
    <button onclick = "constructTable('#table')"> 
        click here 
    </button> 
     
    <br><br> 
      
    <table align = "center"
            id="table" border="1"> 
    </table> 
      <table class="table table-hover">

    <thead>
      <tr>
        <th><b>User Name</b></th>
        <th><b>User Surname</b></th>
        <th><b>User Adress</b></th>
        <th><b>Transactions</b></th>
      </tr>
    </thead>
    <tbody>
    <c:forEach items="${list}" var="lou">
      <tr>
        <td><c:out value="${lou.name}"></c:out></td>
        <td><c:out value="${lou.surname}"></c:out></td>
        <td><c:out value="${lou.adress}"></c:out></td>

			 
      </tr>

          </c:forEach>
    </tbody>
  </table>
    <script> 
        var el_up = document.getElementById("GFG_UP"); 
          
        
        var list = [ 
            { "Name": "Hemang", "City": "Ahmedabad" ,"State" :" GUJ"}, 
            { "Name": "Harry", "City": "Delhi" }, 
            { "Name": "Shalini", "City": "Mumbai" }, 
        ]; 
          
        
              
        function constructTable(selector) { 
            
        	
            // Getting the all column names 
            var cols = Headers(list, selector);   
   
            // Traversing the JSON data 
            for (var i = 0; i < list.length; i++) { 
                var row = $('<tr/>');    
                for (var colIndex = 0; colIndex < cols.length; colIndex++) 
                { 
                    var val = list[i][cols[colIndex]]; 
                      
                    // If there is any key, which is matching 
                    // with the column name 
                    if (val == null) val = "";   
                        row.append($('<td/>').html(val)); 
                } 
                  
                // Adding each row to the table 
                $(selector).append(row); 
            } 
        } 
          
        function Headers(list, selector) { 
            var columns = []; 
            var header = $('<tr/>'); 
              
            for (var i = 0; i < list.length; i++) { 
                var row = list[i]; 
                  
                for (var k in row) { 
                    if ($.inArray(k, columns) == -1) { 
                        columns.push(k); 
                          
                        // Creating the header 
                        header.append($('<th/>').html(k)); 
                    } 
                } 
            } 
              
            // Appending the header to the table 
            $(selector).append(header); 
                return columns; 
        }        
    </script>  
</body>   
  
</html> 