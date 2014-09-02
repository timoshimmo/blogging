<!DOCTYPE html>

<html>
  <head>
    <title>Login</title>
    <style type="text/css">
      .label {text-align: right}
      .error {color: red;
              padding: 0 auto;
              margin: 0 auto;
              text-align: center;}
      body {
            background-image: url("/images/rainglass_bg.jpg"); 
            background-repeat: no-repeat;
            height: 100%;
            width: 100%;
            font: 16px/1.4 "Helvetica Neue","HelveticaNeue",Helvetica,Arial,sans-serif;
      }
            
      .logo_header {
              width: 400px; 
              height: 100px; 
              text-align: center; 
              pading: 0 auto;
              margin: 130px auto 0;
      }
                    
       .logo_text {
              text-align: center;
              height: 60px;
              width: 400px;
        }
                   
        .formholder {
               margin: 10px auto 0;
        			 padding: 0 auto;
        			 text-align: center;
        			 width: 300px;
        }     
        			       
       .subheading {width: 400px;
                    margin: 15px auto 20px;
                    padding: 0 auto;
                    color: #ffffff;
                    text-align: center;
                    font-size: 19px;
        }

       form{
             margin: 0 auto;
             padding: 0 auto;
       }
            
       #login {
            background-color: #00b3a8;
            padding: 0 auto;
            margin: 20px auto 50px;
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
       
       #login:hover, #login:focus {
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
               
       .btnsignup {
          margin: -120px 20px 0 0;
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
    <a class="btnsignup" href="/">Sign Up</a><p>
    <h1 class="logo_header"><img class="logo_text" src="../images/logo_head.png"></a></h1>
    <form method="post">
      <table class="formholder">
        <tr>
          <td>
            <input type="text" name="username" value="{{username}}" placeholder="Username">
          </td>
          <!--  <td class="error">
          </td> -->
        </tr>

        <tr>
          <td>
            <input type="password" name="password" value="" placeholder="Password">
          </td>
         <!--   <td class="error">
	    {{login_error}}
            
          </td> -->
        </tr>

      </table>

      <input type="submit" value="Login" id="login">
      <div class="error">
      	{{login_error}}
      </div>
    </form>
  </body>

</html>
