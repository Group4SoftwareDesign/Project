<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Students</title>
        
        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="css/stylish-portfolio.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
        
    </head>
    <body>
        
    <div class ="text-right">
         <a href= "index.jsp" class ="btn btn-default">Home</a>
    </div>    
       
                <div class="main">
                    <form name="searchForm" action="search" method="get">

                            <input type="text" name="searchVal" placeholder="Search">
                            <br><br>
                            <input type="submit" name="submit" value="Submit" />

                        
                    </form>
                </div>