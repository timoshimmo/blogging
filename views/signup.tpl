<!DOCTYPE html>
<html>
  <head>
    <title>Sign Up</title>
    <style type="text/css">
      html {
      		font: 16px/1.4 "Helvetica Neue","HelveticaNeue",Helvetica,Arial,sans-serif;
            padding: 0;
            margin: 0;
            border:0;
           
           }
           
      .label {text-align: right;
      		  color: #ffffff;
      		  text-size: 18px;}
      .error {color: red;
      		  padding: 0 auto;
              margin: 0 auto;
              text-align: center;}
      body {
            font: 16px/1.4 "Helvetica Neue","HelveticaNeue",Helvetica,Arial,sans-serif;
            padding: 0;
            margin: 0;
            border:0;
            height: 650px;
            }
            
      #signup_container {
      					background-image: url("../images/bg.jpg"); 
			            background-repeat: no-repeat;
			            height: 100%;
			            width: 100%;
			            position: absolute;
      					}
            
      .logo_header {width: 400px; 
                    height: 100px; 
                    text-align: center; 
                    pading: 0 auto;
                    margin: 70px auto 0;}
                    
       .logo_text {text-align: center;
                   height: 60px;
                   width: 400px;}
                   
        .formholder {margin: 10px auto 0;
        			 padding: 0 auto;
        			 text-align: center;
        			 width: 300px;
        			 }     
        			       
       .subheading {width: 400px;
                    margin: 15px auto 20px;
                    padding: 0 auto;
                    color: #ffffff;
                    text-align: center;
                    font-size: 19px;}
       form{margin: 0 auto;
            padding: 0 auto;
            }
            
       #signup {background-color: #00b3a8;
                padding: 0 auto;
                margin: 20px auto 0;
                text-align: center;
                color: #ffffff;
                font-size: 20px;
                font-weight: bold;
                width: 300px;
                cursor:pointer;
                -moz-border-radius: 5px;
				-webkit-border-radius: 5px;
				border-radius: 5px;
				-webkit-box-shadow: 0 0 4px rgba(0,0,0, .85);
				-moz-box-shadow: 0 0 4px rgba(0,0,0, .85);
				box-shadow: 0 0 4px rgba(0,0,0, .85);
                }
                
        #signup:hover, #signup:focus {
        							 -webkit-box-shadow: 0 0 1px rgba(0,0,0, .75);
									 -moz-box-shadow: 0 0 1px rgba(0,0,0, .75);
									 box-shadow: 0 0 1px rgba(0,0,0, .75);
        							 background-color: #006660;
                                     }
                
       input {width:300px;
              padding: 10px 12px 10px 13px;
              font: 16px/1.4 "Helvetica Neue","HelveticaNeue",Helvetica,Arial,sans-serif;
              display: block;
              border: 0;
              margin: 0;
              -webkit-box-sizing: border-box;
              box-sizing: border-box;
               }
       .btnlogin {margin: 10px 20px 0 0;
                  padding: 7px 8px 7px 9px;
                  text-decoration: none;
                  background-color: #00b3a8;
                  filter: alpha(opacity=60);
  				  filter: progid:DXImageTransform.Microsoft.Alpha(opacity=60);
  				  -moz-opacity: 0.6;
  				  -webkit-opacity: 0.6;
  				  opacity:0.6;
  				  color: #ffffff;
  				  font-size: 17px;
  				  width: 150px;
  				  text-align: center;
  				  float: right;
  				  -moz-border-radius: 3px;
				  -webkit-border-radius: 3px;
				  border-radius: 3px;
				  -webkit-box-shadow: 0 0 4px rgba(0,0,0, .85);
				  -moz-box-shadow: 0 0 4px rgba(0,0,0, .85);
				  box-shadow: 0 0 4px rgba(0,0,0, .85);
  				  }
    </style>

  </head>
  <body>
	  <div id="signup_container">
	    <a class="btnlogin" href="/login">Login</a>
	    <h1 class="logo_header"><img class="logo_text" src="../images/logo_head.png"></a></h1>
	    <h2 class="subheading">Read blogs that pique your interest.<br/> Share your thoughts.</h2>
	    <form method="post">
	      <table class="formholder">
	        <tr>
	          <td>
	            <input type="text" name="username" value="{{username}}" placeholder="Username">
	          </td>
	         <!--   <td class="error">
		    {{username_error}}       
	          </td>-->
	        </tr>
	
	        <tr>
	          <td>
	            <input type="password" name="password" value="" placeholder="Password">
	          </td>
	       <!--     <td class="error">
		    {{password_error}}
	            
	          </td> -->
	        </tr>
	
	        <tr>
	          <td>
	            <input type="password" name="verify" value="" placeholder="Confirm">
	          </td>
	        <!--    <td class="error">
		    {{verify_error}}
	            
	          </td>-->
	        </tr>
	
	        <tr>
	          <td>
	            <input type="text" name="email" value="{{email}}" placeholder="Email (Optional)">
	          </td>
	        <!--    <td class="error">
		    {{email_error}}
	            
	          </td>  -->
	        </tr>
	      </table>
	
	      <input type="submit" value="Sign Up" id="signup">
	      <div class="error">
	      	{{username_error}} 
	      	{{password_error}}
	      	{{verify_error}}
	      	{{email_error}}	
	      </div>
	    </form>
	 </div>
  </body>
</html>