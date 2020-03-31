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
  <title>OddJob | Index</title>
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


</head>

<body>

  <div id="wrapper">


    <!-- start header -->
    <jsp:include page="header.jsp"/>
    
    <!-- end header -->

    <!-- section featured -->
    <section id="featured">

      <!-- slideshow start here -->

      <div class="camera_wrap" id="camera-slide">

        <!-- slide 1 here -->
        <div data-src="static/img/slides/camera/slide1/img1.jpg">
          <div class="camera_caption fadeFromLeft">
            <div class="container">
              <div class="row">
                <div class="span6">
                  <h2 class="animated fadeInDown"><strong>Great solution to <span class="colored">earn quick money</span></strong></h2>
                  <p class="animated fadeInUp"> In order to be better time managed and efficient, there is nothing wrong with simplicity. Simplicity is often overlooked in most companies.</p>
                  <!-- <a href="#" class="btn btn-success btn-large animated fadeInUp">
											<i class="icon-link"></i> Read more
										</a>
                  <a href="#" class="btn btn-theme btn-large animated fadeInUp">
											<i class="icon-download"></i> Download
										</a> -->
                </div>
                <div class="span6">
                  <img src="static/img/slides/camera/slide1/screen.png" alt="" class="animated bounceInDown delay1" />
                </div>
              </div>
            </div>
          </div>
        </div>

        <!-- slide 2 here -->
        <div data-src="static/img/slides/camera/slide2/bgw.jpg">
          <div class="camera_caption fadeFromLeft">
            <div class="container">
              <div class="row">
                <div class="span6">
                  <img src="static/img/slides/camera/slide2/bgw.jpg" alt="" />
                </div>
                <div class="span6">
                  <h2 class="animated fadeInDown"><span style="color:white"><strong>Create Your Job</strong></span></h2>
                  <p class="animated fadeInUp"> </p>
                  <form>
                    <!-- <div class="input-append">
                      <input class="span3 input-large" type="text">
                      <button class="btn btn-theme btn-large" type="submit">Subscribe</button>
                    </div> -->
                  </form>
                </div>

              </div>
            </div>
          </div>
        </div>

        <!-- slide 3 here -->
        <div data-src="static/img/slides/camera/slide2/leaves.jpg">
          <div class="camera_caption fadeFromLeft">
            <div class="container">
              <div class="row">
                <div class="span12 aligncenter">
                  <!-- <h2 class="animated fadeInDown"><strong><span class="colored">Responsive</span> and <span class="colored">cross broswer</span> compatibility</strong></h2> -->
                  
                  <img src="static/img/slides/camera/slide2/leaves.jpg" alt="" class="animated bounceInDown delay1" />
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>

      <!-- slideshow end here -->

    </section>
    <!-- /section featured -->

    <section id="content">
      <div class="container">


        <div class="row">

          <div class="span3">
            <div class="service-box aligncenter flyLeft">
              <div class="icon">
                <i class="icon-circled icon-bgprimary icon-code icon-4x"></i>
              </div>
              <h5>Application <span class="colored"></span></h5>
              <p>
                Anywhere with a computer
              </p>

            </div>
          </div>
          <div class="span3">
            <div class="service-box aligncenter flyIn">
              <div class="icon">
                <i class="icon-circled icon-bgsuccess icon-cloud icon-4x"></i>
              </div>
              <h5>Cloud <span class="colored">Hosting</span></h5>
              <p>
                A potential future application
              </p>

            </div>
          </div>
          <div class="span3">
            <div class="service-box aligncenter flyIn">
              <div class="icon">
                <i class="icon-circled icon-bgdanger icon-mobile-phone icon-4x"></i>
              </div>
              <h5>Mobile <span class="colored">Application</span></h5>
              <p>
                Very close to being put in the app store!
              </p>

            </div>
          </div>
          <div class="span3">
            <div class="service-box aligncenter flyRight">
              <div class="icon">
                <i class="icon-circled icon-bgwarning icon-envelope-alt icon-4x"></i>
              </div>
              <h5>Viral <span class="colored">Marketing</span></h5>
              <p>
                 Ads anyone?
              </p>

            </div>
          </div>
        </div>

        <div class="row">
          <div class="span12">
            <div class="cta-box">
              <div class="row">
                <div class="span8">
                  <div class="cta-text">
                    <h2>Great solutions available for jobs anytime! <span>NOT limited to seasons</span></h2>
                  </div>
                </div>
                <div class="span4">
                  <div class="cta-btn">
                    <!-- <a href="#" class="btn btn-theme">Get a quote <i class="icon-angle-right"></i></a> -->
                  </div>
                </div>

              </div>


            </div>
          </div>
        </div>

        <div class="row">
          <div class="span12 aligncenter">
            <h3 class="title">What people are<strong> saying</strong> about us</h3>
            <div class="blankline30"></div>

            <ul class="bxslider">
            <c:forEach var="item" items="${comments}">
            <c:if test="${not empty item.comment}">
              <li>
                <blockquote>
                  <p>${item.comment}</p>
                </blockquote>
                <div class="testimonial-autor">
                  <img src="static/img/users/${item.id}/profile/${item.image}" alt=""
                  style="width: 50px; height: 45px; border-radius: 50%;" />
                  <h4>${item.fname} ${item.lname}</h4>
                  <a href="#">${item.email}</a>
                </div>
              </li>
              </c:if>
              </c:forEach>
            </ul>

          </div>
        </div>

      </div>
    </section>


    <!-- <section id="works">
      <div class="container">
        <div class="row">
          <div class="span12">
            <h4 class="title">Jobs <strong>and Jobs</strong></h4>
            <div class="row">

              <div class="grid cs-style-4">
                <div class="span3">
                  <div class="item">
                    <figure>
                      <div><img src="static/img/dummies/works/1.jpg" alt="" /></div>
                      <figcaption>
                        <div>
                          <span>
								<a href="static/img/dummies/works/big.png" data-pretty="prettyPhoto[gallery1]" title="Portfolio caption here"><i class="icon-plus icon-circled icon-bglight icon-2x"></i></a>
								</span>
                          <span>
								<a href="#"><i class="icon-file icon-circled icon-bglight icon-2x"></i></a>
								</span>
                        </div>
                      </figcaption>
                    </figure>
                  </div>
                </div>
                <div class="span3">
                  <div class="item">
                    <figure>
                      <div><img src="static/img/dummies/works/2.jpg" alt="" /></div>
                      <figcaption>
                        <div>
                          <span>
								<a href="static/img/dummies/works/big.png" data-pretty="prettyPhoto[gallery1]" title="Portfolio caption here"><i class="icon-plus icon-circled icon-bglight icon-2x"></i></a>
								</span>
                          <span>
								<a href="#"><i class="icon-file icon-circled icon-bglight icon-2x"></i></a>
								</span>
                        </div>
                      </figcaption>
                    </figure>
                  </div>
                </div>
                <div class="span3">
                  <div class="item">
                    <figure>
                      <div><img src="static/img/dummies/works/3.jpg" alt="" /></div>
                      <figcaption>
                        <div>
                          <span>
								<a href="static/img/dummies/works/big.png" data-pretty="prettyPhoto[gallery1]" title="Portfolio caption here"><i class="icon-plus icon-circled icon-bglight icon-2x"></i></a>
								</span>
                          <span>
								<a href="#"><i class="icon-file icon-circled icon-bglight icon-2x"></i></a>
								</span>
                        </div>
                      </figcaption>
                    </figure>
                  </div>
                </div>
                <div class="span3">
                  <div class="item">
                    <figure>
                      <div><img src="static/img/dummies/works/4.jpg" alt="" /></div>
                      <figcaption>
                        <div>
                          <span>
								<a href="static/img/dummies/works/big.png" data-pretty="prettyPhoto[gallery1]" title="Portfolio caption here"><i class="icon-plus icon-circled icon-bglight icon-2x"></i></a>
								</span>
                          <span>
								<a href="#"><i class="icon-file icon-circled icon-bglight icon-2x"></i></a>
								</span>
                        </div>
                      </figcaption>
                    </figure>
                  </div>
                </div>
              </div>

            </div>
          </div>
        </div>
      </div>
    </section> -->

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
  <script src="static/js/camera/camera.js"></script>
  <script src="static/js/camera/setting.js"></script>

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
