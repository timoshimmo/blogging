#!/usr/bin/env python
#
# Copyright 2007 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
#import webapp2
from bottle import bottle
from bottle.bottle import static_file
#from google.appengine.ext.webapp.util import run_wsgi_app
import cgi
import re


@bottle.route('/')
def blog_home():
    
    return bottle.template('signup', dict(username="", password="",
                                    password_error="",
                                    email="", username_error="", email_error="",
                                    verify_error=""))
    
    email = bottle.request.forms.get("email")
    username = bottle.request.forms.get("username")
    password = bottle.request.forms.get("password")
    verify = bottle.request.forms.get("verify")

    if username is None and password is None:
        print "You need to fill the form"
    else:
        bottle.redirect('/welcome')

@bottle.route('/images/<filename:re:.*\.(jpg|png|gif|ico)>')
def images(filename):
        return static_file(filename, root='images')
   
@bottle.get('/login')
def present_login():
    return bottle.template("login", dict(username="", password="",
                                    login_error=""))


@bottle.post('/login')
def process_login():

    username = bottle.request.forms.get("username")
    password = bottle.request.forms.get("password")

    user = "myusername"
    passwrd = "mypassword"

    if username == user and password == passwrd:
        bottle.redirect("/welcome")
    else:
        print "Invalid username or password"
        return bottle.template("login", dict(username=cgi.escape(username), password="",
                                        login_error="Invalid Login"))

@bottle.get("/welcome")
def present_welcome():
    return bottle.template("welcome", {'username': 'currentuser'})

    
#def main():
#    debug(True)
#    run_wsgi_app(bottle.default_app())


@bottle.error(403)
def Error403(code):
    return 'Wrong Coding. Check it now!'


@bottle.error(404)
def Error404(code):
    return 'Wrong place to search'

#if __name__=="__main__":
#    main()
bottle.debug(True)
bottle.run(host='localhost', port=3002)  
#bottle.run(server='gae')         # Start the webserver running and wait for requests
#app = bottle.app()
