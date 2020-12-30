import pygame, sys
pygame.init()

#----Parts/Attributes-----------------
#window build
width = 400
height = 500
framerate = 60
screen = pygame.display.set_mode((width, height))
pygame.display.set_caption("Python Snake Game by Michael Disieno")
#clock to vary proc speed in process.
clock = pygame.time.Clock()

#Snake
snake = pygame.Surface((50,200))
snake.fill((23,22,198))
snakeHorizontalPos = 200
snakeVerticalPos = 250
snakeRect = snake.get_rect(center = (snakeHorizontalPos,snakeVerticalPos))

#Draw the Apple
apple = pygame.Rect(100,200,100,100)

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
    screen.fill((23,255,147))
    

    #Draw the Snake
    screen.blit(snake,snakeRect)
    snakeRect.right += 1
    #Draw the Apple
    pygame.draw.ellipse(screen,pygame.Color(('Red')),apple)
    #Display of Game
    pygame.display.update()
    clock.tick(framerate)

    #----/Draw/Control-----------------         