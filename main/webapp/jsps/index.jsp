<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<f:wrapper2>
       <div class="container">
  <center><h1>WELCOME TO OUR UNIVERSITY</h1></center>
  <img src="${pageContext.request.contextPath}/static/img/100Y slider1.jpg"width="1200" height="400">
  <marquee>COLLEGE NEWS COLLEGE NEWS COLLEGE NEWS COLLEGWNEWS COLLEGe NEWS COLLEGE NEWS COLLEGE NEWS</marquee>
   <center> <h2>UNIVERSITY NEWS</h2>  </center>
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
    
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
  
     
      <div class="carousel-inner">
        <div class="item active">
          <img src="${pageContext.request.contextPath}/static/img/opanews-mainbanner_2015-2022.jpg" alt="NEWS" style="width:100%;">
        </div>
  
        <div class="item">
          <img src="${pageContext.request.contextPath}/static/img/BANNER-OPA-NEWS-44-2200X550px_0.jpg" alt="NEWS" style="width:100%;">
        </div>
      
        <div class="item">
          <img src="${pageContext.request.contextPath}/static/img/BANNER Economics & Business   (1670 × 470 px).png" alt="NEWS" style="width:100%;">
        </div>
      </div>
  
     
      <a class="left carousel-control" href="#myCarousel" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
  </div>
</div>
 
<hr>
       <center> <p>© Copyright 1996 - 2022 | Athens University of Economics and Business</p></center>
       
</f:wrapper2>