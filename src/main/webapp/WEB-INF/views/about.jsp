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
  <title>OddJob</title>
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
  <link href="static/color/default.css" rel="stylesheet" />

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
                <li><a href="#">Pages</a> <i class="icon-angle-right"></i></li>
                <li class="active">About</li>
              </ul>
              <h2>About us</h2>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section id="content">
      <div class="container">
        <div class="row">

          <div class="span12">
            <h4>About OddJob</h4>
            <p style="font-size:150%;">
              OddJob is an idea created by someone that has had a lot of experience in dealing with looking for local jobs for money, and kids looking for said type of jobs. It was obvious a more efficient and time managed solution was necessary to help people do more work for more money and save time in the process.
            </p>
            <blockquote style="font-size:150%;">
              "Never underestimate the power of simplicity."
            </blockquote>

          </div>

        </div>

        <!-- divider -->
        <div class="row">
          <div class="span12">
            <div class="solidline"></div>
          </div>
        </div>
        <!-- end divider -->

        <div class="row team">
          <div class="span12">
            <h4 class="title">Nice people in <strong>OddJob</strong></h4>
          </div>

          <div class="span3">
            <div class="team-box">
              <a href="#" class="thumbnail"><img src="https://scontent-ort2-2.xx.fbcdn.net/v/t1.0-9/p720x720/34258989_204332626856603_7027361456047783936_o.jpg?_nc_cat=100&_nc_sid=13bebb&_nc_ohc=dyKnEvsBuVAAX_R4YUX&_nc_ht=scontent-ort2-2.xx&_nc_tp=6&oh=3e831aa3797e4072381b990e1bc0ab00&oe=5E83BA02" alt="" /></a>
              <div class="roles aligncenter">
                <p class="lead"><strong>Jon Marsh</strong></p>
                <p>
                  Creator- Founder
                </p>
                <p>
                  <a href="#"><i class="icon-facebook icon-circled icon-bglight active"></i></a>
                  <a href="#"><i class="icon-twitter icon-circled icon-bglight active"></i></a>
                  <a href="https://www.linkedin.com/in/jon-marsh-665931b6/"><i class="icon-linkedin icon-circled icon-bglight active"></i></a>
                </p>

              </div>
            </div>
          </div>
          <div class="span3">
            <div class="team-box">
              <a href="#" class="thumbnail"><img src="https://scontent-ort2-2.xx.fbcdn.net/v/t1.0-9/p960x960/33634201_202072703749262_8784984089296896000_o.jpg?_nc_cat=103&_nc_sid=85a577&_nc_ohc=IVZZb1L4dq8AX961SUg&_nc_ht=scontent-ort2-2.xx&_nc_tp=6&oh=22856fa873a81bfc50730c9932284f7b&oe=5E937084" alt="" /></a>
              <div class="roles aligncenter">
                <p class="lead"><strong>Jon Marsh</strong></p>
                <p>
                  Lead designer
                </p>
                <p>
                  <a href="#"><i class="icon-facebook icon-circled icon-bglight active"></i></a>
                  <a href="#"><i class="icon-twitter icon-circled icon-bglight active"></i></a>
                  <a href="#"><i class="icon-linkedin icon-circled icon-bglight active"></i></a>
                </p>
              </div>
            </div>
          </div>
          <div class="span3">
            <div class="team-box">
              <a href="#" class="thumbnail"><img src="https://scontent-ort2-2.xx.fbcdn.net/v/t1.0-9/29683161_187074338582432_3681456464013220831_n.jpg?_nc_cat=106&_nc_sid=7aed08&_nc_ohc=J8b7VlREU1EAX85dkTD&_nc_ht=scontent-ort2-2.xx&oh=e2185199f016f021aadfef697205b38a&oe=5E94803B" alt="" /></a>
              <div class="roles aligncenter">
                <p class="lead"><strong>Jon Marsh</strong></p>
                <p>
                  Customer support
                </p>
                <p>
                  <a href="#"><i class="icon-facebook icon-circled icon-bglight active"></i></a>
                  <a href="#"><i class="icon-twitter icon-circled icon-bglight active"></i></a>
                  <a href="#"><i class="icon-linkedin icon-circled icon-bglight active"></i></a>
                </p>
              </div>
            </div>
          </div>
          <!-- <div class="span3">
            <div class="team-box">
              <a href="#" class="thumbnail"><img src="static/img/dummies/team/4.jpg" alt="" /></a>
              <div class="roles aligncenter">
                <p class="lead"><strong>Benny Strongton</strong></p>
                <p>
                  Coffee maker
                </p>
                <p>
                  <a href="#"><i class="icon-facebook icon-circled icon-bglight active"></i></a>
                  <a href="#"><i class="icon-twitter icon-circled icon-bglight active"></i></a>
                  <a href="#"><i class="icon-linkedin icon-circled icon-bglight active"></i></a>
                </p>
              </div>
            </div>
          </div> -->
        </div>
        <div class="blankline30"></div>

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