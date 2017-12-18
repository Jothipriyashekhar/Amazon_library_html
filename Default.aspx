<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>


<!DOCTYPE html>
<html>
<body>
<style type="text/css">

    #header{
        height:200px;
        width:100%;
        data-position="fixed";
    }

    #container{
        height:500px;
         width:100%;
    }
    #left{
         float:left;
          width:50%;

     }

     #right{
         float:right;
          width:50%;
       
     }
 #header img{
    width:100px;
    height:100px;
    float:left;
 }
   #header h1{
         position:relative;
         top:23px;
         left:30px;
   }
   #header button:hover{
      background-color:dodgerblue;
   }
    #header button{
     float:right;
      background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
 }
    #header p{
      float:right;
      position: relative;
        bottom: 50px;
    }
    input[type=text], input[type=number],input[type=email], select {
   
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}
input[type=submit] {
    
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
   // margin: 8px 0;
   margin-left:100px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}
input[type=submit]:hover {
    background-color: #45a049;
   
}

#header button2{
   margin-left:100px;
}
a{
    text-decoration: none;
}

 #play{
      background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    //margin: 8px 0;
    margin-left:100px;
    border: none;
    border-radius: 4px;
 }
</style>
<div>
    <div id="header">
       <img src="video/sample.jpg"  />
        <h1><b>AMAZING ONLINE VIDEO LIBRARY</b></h1>
        <p id="date"><b></b></p>
         <button id="button2"><a href="AboutUs.aspx">ABOUT US</a></button>
       <p>&nbsp;&nbsp;</p>    
        <button><a href="homepage.aspx">HOME</a></button>
        
    </div>
    <div id="container">
     <div id="left">
         <h1><b>VIDEO OF THE WEEK</b></h1>
          <video id="video" width="350" height="340"  >
          <source src="video/sample.mp4" type="video/mp4">
              </video>
         <div class="left-right">
       <button id="play" onclick="play()">PLAY/PAUSE</button>
        
   </div>
     </div>
     <div id="right">
         <form name="myForm" id ="myForm">
            Enter your first name:
             <input name="firstname" id="firstname" type="text" required>
                <br><br>
            Enter your last name:
                <input name="lastname" id="lastname" type="text" required>
                     <br><br>
            Enter your email-id :
                <input type= email id="email" name = email required><br><br>
            <label for="city"> Select your City</label>
             <select id="city" name="city" required>
                <option value="Delhi">Delhi</option>
                <option value="Mumbai">Mumbai</option>
                 <option value="Bangalore">Bangalore</option>
                 <option value="Hyderabad">Hyderabad</option>
                  <option value="Chennai">Chennai</option>
                  <option value="Kolkata">Kolkata</option>
            </select><br><br>
             Enter your age :
                <input type= number id="numb" name = age required><br><br>
             Video Choice:
              <input name="video choice" type="text" id="mychoice" required>
                <br><br>
   <input type="submit" value="SUBMIT"  onclick="validatetext()">
</form>
     </div>
    </div>
</div>
  <script>

      n = new Date();
      y = n.getFullYear();
      m = n.getMonth() + 1;
      d = n.getDate();
      document.getElementById("date").innerHTML = m + "/" + d + "/" + y;


      function validatetext() {
          debugger;
          var age = document.getElementById("numb");
       if (18 <= age >= 120) {
           alert("Age should be within the range 18 and 120");
       }
       else {
           
           //localStorage.setItem("myage", document.getElementById("numb").value)
           //localStorage.setItem("mymail", document.getElementById("email").value)
           //localStorage.setItem("choicecity", document.getElementById("city").value);
           //localStorage.setItem("fname", document.getElementById("firstname").value);
           //localStorage.setItem("lname", document.getElementById("lastname").value);
           //localStorage.setItem("videochoice", document.getElementById("mychoice").value);

           var res = {
               myage: document.getElementById("numb").value,
               mymail: document.getElementById("email").value,
               choicecity: document.getElementById("city").value,
               fname: document.getElementById("firstname").value,
               lname: document.getElementById("lastname").value,
               videochoice: document.getElementById("mychoice").value
           }
            
           localStorage.setItem("result", JSON.stringify(res));
       }
   }

   var video = document.getElementById("video");
   var playvideo = document.getElementById("play");
   var pausevideo = document.getElementById("pause");
   function play() {
       //alert("play");
       if (video.paused) {
           video.play();
           //playvideo.style.background = "url(play.png) no-repaet"
       }
       else {
           // alert("pause");
           video.pause();
           //pausevideo.style.background = "url(pause.png) no-repaet"
       }
   }

  
   
  </script>    

 

</body>
</html>