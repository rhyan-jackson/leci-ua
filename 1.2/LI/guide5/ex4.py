import cherrypy

class Actions():
    @cherrypy.expose
    def doLogin(self, username=None, password=None):
        return "Verificar as credenciais do utilizador " + username

class Node():
    @cherrypy.expose
    def index(self):
        return "Eu sou o índice do Node (Node.index)"
    @cherrypy.expose
    def page(self):
        return "Eu sou um método do Node (Node.page)"
    
class Root():
    def __init__(self):
        self.node = Node()
        self.actions = Actions()

    @cherrypy.expose
    def index(self):
        return "Eu sou o índice do Root (Root.index)"

    @cherrypy.expose
    def page(self):
        return "Eu sou um método do Root (Root.page)"
    
    @cherrypy.expose
    def form(self):
        cherrypy.response.headers["Content-Type"] = "text/html"
        return open("formulario.html")
    
if __name__ == "__main__":
    cherrypy.quickstart(Root(), "/")