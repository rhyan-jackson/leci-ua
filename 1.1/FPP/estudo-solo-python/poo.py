

class Point:
    def __init__(self):
        self.X = 0
        self.Y = 0
        
        self.minX = 0
        self.minY = 0
        
        self.maxX = 100
        self.maxY = 100
    
    def moveLeft(self, qt):
        if self.X - qt < self.minX:
            self.X = self.minX
        else:
            self.X -= qt
    
    def moveRight(self, qt):
        if self.X + qt > self.maxX:
            self.X = self.maxX
        else:
            self.X += qt
    
    def getPos(self):
        return (self.X, self.Y)

    def resetPos(self):
        self.X = 0
        self.Y = 0

if __name__ == '__main__':
    pt1 = Point()