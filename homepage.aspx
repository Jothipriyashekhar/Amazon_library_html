<%@ Page Language="C#" AutoEventWireup="true" CodeFile="homepage.aspx.cs" Inherits="homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div id="header">
        <img src="video/sample.jpg"  />
        <h1><b>AMAZING ONLINE VIDEO LIBRARY</b></h1>
         <hr style="margin-top:50px" />
        <h4><b>Why is it important to have a library?</b></h4>
        Libraries are important cornerstones of a healthy community. ... College students often use the library when they are home for the weekend or for holidays. And the reference resources in public libraries are usually unavailable elsewhere in the community. Our library is a unique and valuable resource.
        <br />
        <h4><b>What is the role of library?</b></h4>
        As gateways to knowledge and culture, libraries play a fundamental role in society. The resources and services they offer create opportunities for learning, support literacy and education, and help shape the new ideas and perspectives that are central to a creative and innovative society.
         </div>
    </div>
    </form>
</body>
</html>
