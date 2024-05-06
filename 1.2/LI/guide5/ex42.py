import cherrypy

class Actions():
    @cherrypy.expose
    def doLogin(self, username=None, password=None):
        if password == "0110":
            return ("Correct password.")
        else:
            return ("Incorrect password")
    
class Root():
    def __init__(self):
        self.actions = Actions()
    
    @cherrypy.expose
    def form(self):
        cherrypy.response.headers["Content-Type"] = "text/html"
        return open("formulario.html")
    
if __name__ == "__main__":
    cherrypy.quickstart(Root(), "/")