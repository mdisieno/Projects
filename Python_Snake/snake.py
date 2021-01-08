import pygame, sys
from pygame.math import Vector2

#----Classes/Attributes-----------------
class FRUIT:
    def _init_(self):
        self.x = 5
        self.y = 4
        #Vector for fruit position
        self.pos = Vector2(self.x,self.y)

    def drawFruit(self):
        #Create the Fruit (x,y,w,h)
        #print(self.pos)
        fruitRect = pygame.Rect((self.x,self.y),(cellSize,cellSize))
        #Draw the Fruit (surface,color,rectangle)
        pygame.draw.Rect(screen,pygame.color('Red'),fruitRect)

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
pygame.init()
#----Parts/Attributes-----------------
#General Var
framerate = 60
#Screen/Grid layout for snake movement
cellSize = 40
cellNumber = 20
#Squared at 20 x 40px cells = 800px^2 
screen = pygame.display.set_mode((cellNumber*cellSize, cellNumber*cellSize))
pygame.display.set_caption("Python Snake Game by Michael Disieno")
#clock to vary proc speed in process.
clock = pygame.time.Clock()

#Fruit
fruit = FRUIT()

#Snake
snake = pygame.Surface((50,200))
snake.fill((23,22,198))
snakeHorizontalPos = 200
snakeVerticalPos = 250
snakeRect = snake.get_rect(center = (snakeHorizontalPos,snakeVerticalPos))


#----/Parts/Attributes-----------------

#Set the game to run
while True:
    for event in pygame.event.get():
        #if you click exit, exit the game
        if event.type == pygame.QUIT:
            pygame.quit()
            sys.exit()
    #----Draw/Control-----------------            
    #Draw all elements
    #Draw the Snake
    screen.blit(snake,snakeRect)  
    #Display of Game
    screen.fill((23,255,147))
    
    
    #where it brakes, no pos but there is a pos
    #why you break?
    fruit.drawFruit()
    
    pygame.display.update()
    clock.tick(framerate)
    #----/Draw/Control-----------------         