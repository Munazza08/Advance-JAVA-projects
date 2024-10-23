<%@include file="menu.html" %>
<html>
  <head>
    <link rel="stylesheet" type="text/css" href="./css/insertStyle.css">
  </head>
  <body>
    <form class="form-box" action="save-info.jsp">
      <div>
      
        <div class="tb">Enter First Name:
           <div class="textbox">
           <input type="text" name="first_name" value="" required>
           </div>
        </div>
        
        <div class="tb">Enter Last Name:
           <div class="textbox">
           <input type="text" name="last_name" value="" required>
           </div>
        </div>
        
        <div class="tb">Enter Address:  
            <div class="textbox">
            <input type="text" name="address" value="" required>
            </div>
        </div>
        
        <div class="tb">Enter EmailId:  
            <div class="textbox">
            <input type="text" name="emailid" value="" required>
            </div>
        </div>
        
        <div class="tb">Enter Phone Number:
             <div class="textbox">
             <input type="text" name="phoneno" value="" required>
             </div>
        </div>
        
        <button class="bt">Save</button>
        
      </div>
    </form>
  </body>
</html>