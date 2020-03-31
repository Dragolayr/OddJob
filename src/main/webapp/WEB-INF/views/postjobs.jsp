<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />


<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Post Jobs</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="description" content="Your page description here" />
  <meta name="author" content="" />

  <!-- css -->
  <link href="https://fonts.googleapis.com/css?family=Handlee|Open+Sans:300,400,600,700,800" rel="stylesheet">
  <link href="static/css/bootstrap.css" rel="stylesheet" />
  <link href="static/css/bootstrap-responsive.css" rel="stylesheet" />
  <link href="static/css/flexslider.css" rel="stylesheet" />
  <link href="static/css/prettyPhoto.css" rel="stylesheet" />
  <link href="static/css/camera.css" rel="stylesheet" />
  <link href="static/css/jquery.bxslider.css" rel="stylesheet" />
  <link href="static/css/style.css" rel="stylesheet" />

  <!-- Theme skin -->
  <link href="color/default.css" rel="stylesheet" />

  <!-- Fav and touch icons -->
  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="ico/apple-touch-icon-144-precomposed.png" />
  <link rel="apple-touch-icon-precomposed" sizes="114x114" href="ico/apple-touch-icon-114-precomposed.png" />
  <link rel="apple-touch-icon-precomposed" sizes="72x72" href="ico/apple-touch-icon-72-precomposed.png" />
  <link rel="apple-touch-icon-precomposed" href="ico/apple-touch-icon-57-precomposed.png" />
  <link rel="shortcut icon" href="ico/favicon.png" />

  <!-- =======================================================
    Theme Name: Eterna
    Theme URL: https://bootstrapmade.com/eterna-free-multipurpose-bootstrap-template/
    Author: BootstrapMade.com
    Author URL: https://bootstrapmade.com
  ======================================================= -->
</head>

<body>

  <div id="wrapper">

    <!-- start header -->
<jsp:include page="header.jsp"/>
    <!-- end header -->

    <section id="inner-headline">
      <div class="container">
        <div class="row">
          <div class="span12">
            <div class="inner-heading">
              <ul class="breadcrumb">
                <li><a href="index">Home</a> <i class="icon-angle-right"></i></li>
                <li><a href="postjobs">Post Jobs</a> <i class="icon-angle-right"></i></li>
                <li class="active">Post Jobs</li>
              </ul>
              
            </div>
          </div>
        </div>
      </div>
    </section>

    <section id="content">
      
      <div class="container">
        <div class="row">
          <div class="span8">
            <h4 class="title"><strong>Welcome ${loggedInuser.fname}</strong> !! Here to Post a Job?
            <a  href="#" data-toggle="modal" data-target="#add-images" class="btn btn-danger">
<c:if test="${not empty loggedInuser.image}">
Add Photo 
<i class="icon-camera"></i>
<i class="fa fa-pencil"></i>
</c:if>
<c:if test="${empty loggedInuser.image}">
A d d  P h o t o 
<i class="icon-camera"></i>
<i class="fa fa-plus"></i>
</c:if>
</a>
</h4>

            <h4 class="text-success">${msg} </h4>
            <div id="errormessage">${error}</div>
            
            <div class="tabs">
                  <ul class="nav nav-tabs bold">
                    <li class="active"><a href="#one" data-toggle="tab"><i class="icon-user"></i>Job Details</a></li>
                    <!-- <li><a href="#two" data-toggle="tab"><i class="icon-briefcase"></i> My Contact Info</a></li> -->
                    
                    
                  </ul>
                  <div class="tab-content">
                    <div class="tab-pane active" id="one">
                    <form:form action="postjobs" modelAttribute="postjobs" method="post"> <!-- modelAttribute is where the operation gets the action from the controller/// role="form" class="contactForm"-->
              
                    <div class="span5 form-group">
                    
                    <form:input type="hidden" path="id"/>
    <form:input path="jobname" placeholder="Enter A Name for the job" required="true"/>               
    <form:input path="time" placeholder="Enter Time for the job" required="true"/>
    <form:input path="pay" placeholder="Enter Pay for the job" required="true"/>
    <form:input path="location" placeholder="Enter area for job" required="true"/>
    <form:input path="email" placeholder="Enter Email" required="true"/>
    <form:input path="phone" placeholder="Enter Phone" required="true"/>
    <textarea name="comments" rows="5" data-rule="required" data-msg="Please add any additional details about your job." placeholder="Additional Details"></textarea>
                     
    <%-- <form:select class="span5 form-control lg" path="state" id="state" required="true">
                    <c:choose>
                      <c:when test="${empty loggedInuser.state}">
                      <option value="">Select State</option>
                      </c:when>
                      <c:otherwise>
                      <option value="${loggedInuser.state}">${loggedInuser.state}</option> 
                      </c:otherwise>
                      </c:choose>                                 
<c:forEach items="${states}" var="state">
<option value="${state}">${state.id}</option>
</c:forEach>
</form:select> --%>

                    <button class="btn btn-medium margintop10" type="submit">Post Job</button>
                  </div>
              
            </form:form>
                    </div>
                    <div class="tab-pane" id="two">
                     <h5 class="widgetheading">
                     
                     <c:if test="${not empty loggedInuser.image}">
<img src="static/img/users/${loggedInuser.id}/profile/${loggedInuser.image}" 
alt="Profile Image" style="width: 50px; height: 45px; border-radius: 50%;">
</c:if>
${loggedInuser.fname} ${loggedInuser.lname}
                     </h5>
<%-- <div class="span4">
                <ul class="contact-info">
                  <li><label>Address :</label> ${loggedInuser.street} <br>${loggedInuser.city} ${loggedInuser.state}<br /> </li>
                  <li><label>Phone :</label> ${loggedInuser.phone} </li>
                  <li><label>Email : </label>${loggedInuser.email}</li>
                </ul>
               </div> --%>
               
             </div>
                    <div class="tab-pane" id="three">
                      <%-- <form action="jobcomments" method="post" role="form" class="contactForm">
              <div class="row">
                
                <div class="span7 form-group">
                  <textarea name="comment" rows="5" data-rule="required" data-msg="Please add any additional details about your job." placeholder="Additional Details"></textarea>
                  <div class="validation"></div>
                  <div class="text-left">
                    <button class="btn btn-theme btn-medium margintop10" type="submit">Add </button>
                  </div>
                </div>
              </div>
            </form> --%>
                    </div>
                  </div>
                </div>
             
            </div>
          
          <div class="span4">
            <div class="clearfix"></div>
            <aside class="right-sidebar">

<div class="span3">
<div class="text-center">
<c:if test="${not empty loggedInuser.image}">
<img src="static/img/users/${loggedInuser.id}/profile/${loggedInuser.image}" 
alt="Profile Image" style="width: 159px; height: 159px; border-radius: 50%;">
    </c:if>
                      
<span class="text-danger text-center">${error}</span>  

   </div>
    </div>  
   
              <div class="widget">
                <h5 class="widgetheading">${loggedInuser.fname} ${loggedInuser.lname}<span></span></h5>

                <ul class="contact-info">
                  <li><label>Address :</label> ${loggedInuser.street} <br>${loggedInuser.city} ${loggedInuser.state}<br /> </li>
                  <li><label>Phone :</label> ${loggedInuser.phone} </li>
                  <li><label>Email : </label>${loggedInuser.email}</li>
                </ul>

              </div>
            </aside>
          </div>
        </div>
      </div>
      
    </section>


    <jsp:include page="footer.jsp"/>
  </div>
  <a href="#" class="scrollup"><i class="icon-angle-up icon-square icon-bglight icon-2x active"></i></a>

  <!-- javascript
    ================================================== -->
  <!-- Placed at the end of the document so the pages load faster -->
  <script src="static/js/jquery.js"></script>
  <script src="static/js/jquery.easing.1.3.js"></script>
  <script src="static/js/bootstrap.js"></script>

  <script src="static/js/modernizr.custom.js"></script>
  <script src="static/js/toucheffects.js"></script>
  <script src="static/js/google-code-prettify/prettify.js"></script>
  <script src="static/js/jquery.bxslider.min.js"></script>

  <script src="static/js/jquery.prettyPhoto.js"></script>
  <script src="static/js/portfolio/jquery.quicksand.js"></script>
  <script src="static/js/portfolio/setting.js"></script>

  <script src="static/js/jquery.flexslider.js"></script>
  <script src="static/js/animate.js"></script>
  <script src="static/js/inview.js"></script>

  <!-- Template Custom JavaScript File -->
  <script src="static/js/custom.js"></script>


</body>

</html>