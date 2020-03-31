<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<header style="background-color:lightgreen;">
      <div class="top">
        <div class="container">
          <div class="row">

            <div class="span6">

              <ul class="social-network">
                <li><a href="#" data-placement="bottom" title="Facebook"><i class="icon-facebook icon-white"></i></a></li>
                <li><a href="#" data-placement="bottom" title="Twitter"><i class="icon-twitter icon-white"></i></a></li>
                <li><a href="#" data-placement="bottom" title="Linkedin"><i class="icon-linkedin icon-white"></i></a></li>
                <li><a href="#" data-placement="bottom" title="Pinterest"><i class="icon-pinterest  icon-white"></i></a></li>
                <li><a href="#" data-placement="bottom" title="Google +"><i class="icon-google-plus icon-white"></i></a></li>
                <li><a href="#" data-placement="bottom" title="Dribbble"><i class="icon-dribbble icon-white"></i></a></li>
              </ul>

            </div>
          </div>
        </div>
      </div>
      <div class="container" >


        <div class="row nomargin">
          <div class="span4">
            <div class="logo">
              <a href="index"><img src="https://webstockreview.net/images/feet-clipart-ankle-17.png" width="100px" height="100px" alt="" /></a>
              <h1>ODD JOB</h1>
              
            </div>
          </div>
          <div class="span8">
            <div class="navbar navbar-static-top">
              <div class="navigation">
                <nav>
                  <ul class="nav topnav">
                    <li class="dropdown active">
                      <a href="index"><i class="icon-home"></i> Home <i class="icon-angle-down"></i></a>
                      <ul class="dropdown-menu">
                        
                        <li><a href="users">Users</a></li>
                        
                        <li><a href="postjobs">Post a Job</a></li>
                      </ul>
                    </li>                    
                    <li class="${_about}">
                      <a id="about" href="about">About-Us </a>
                    </li>
                    <li>
                    <li class="${_services}">
                      <a id="services" href="services">Services </a>
                    </li>
                    <li>
                    <li class="${_contact}">
                      <a id="contact" href="contact">Contact </a>
                    </li>
                    <li class="${_createdjobs}">
                      <a href="createdjobs">Jobs </a>
                    </li>
                    
   <c:choose>
   <c:when test="${empty loggedInuser}">
   <li>
   <li class="${_login}">
   <a id="login" href="login">Login</a>
   
   </li>
   <li>
   <li class="${_register}">
   <a id="register"  href="register">Register</a>
   
   </li>
   </c:when>
   <c:otherwise>
   <li>
   <a href="profile">My Profile</a>
   </li>
   <li>
   <a id="logout" href="logout"> ${loggedInuser.email} | Logout</a>
   </li>   
   </c:otherwise>
   </c:choose>
                    
                    
                  </ul>
                </nav>
              </div>
              <!-- end navigation -->
            </div>
          </div>
        </div>
      </div>
    </header>