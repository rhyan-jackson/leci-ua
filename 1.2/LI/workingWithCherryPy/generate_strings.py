import random
import string
import cherrypy


class StringGenerator(object):
    @cherrypy.expose
    def index(self):
        return "Hello world!"

    @cherrypy.expose
    def generate(self, length=8):
        length = int(length)
        return "".join(random.sample(string.hexdigits, length))


if __name__ == "__main__":
    cherrypy.quickstart(StringGenerator())
