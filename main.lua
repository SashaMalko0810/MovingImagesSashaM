-- Title: MovingImages
-- Name: Sasha Malko
-- Course: ICS2O/3C
-- This program displays a beetleship moving acrpss the screen
--as well as another object moving in a different direction.

print ("***Testing beetleship!")

--hide the status bar
display.setStatusBar(display.HiddenStatusBar)

--global variables
scrollSpeed = 2
goSpeed = 5

--background image with width and height
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)

--character image with width and height
local beetleship = display.newImageRect("Images/beetleship.png", 200, 200)

--set the image to be transparent
beetleship.alpha = 0

--set the intial x and y position of beetleship
beetleship.x = 0
beetleship.y = display.contentHeight/2

beetleship:scale(0.8,0.8)

--Function: MoveShip
--Input: this function accepts an event listener
--Output: none
--Description: This function adds the scroll speed to the x-value of the ship
local function MoveShip(event)
	--add the scroll speed to the x-value of the ship
	beetleship.x = beetleship.x + scrollSpeed
	--change the transparency of the ship every time it moves so that it fades out 
	beetleship.alpha = beetleship.alpha + 0.01
end

--MoveShip will be called over and over again
Runtime:addEventListener("enterFrame", MoveShip)

--character image with width and height
local beetleship2 = display.newImageRect("Images/beetleship.png",200,200)
 
 transition.to(beetleship2, {x=900, rotation = beetleship2.rotation-500,time=2000,} )

--have image in different direction
beetleship2:scale (-1, 1)

beetleship2:scale (0.5,0.5)

--set the image to be transparent
beetleship2.alpha = 100

--set the intial x and y position of beetleship
beetleship2.x = display.contentWidth/2
beetleship2.y = 0

--Function: MoveShip
--Input: this function accepts an event listener
--Output: none
--Description: This function adds the scroll speed to the x-value of the ship
local function MoveShip(event)
	--add the scroll speed to the x-value of the ship
	beetleship2.y = beetleship2.y + goSpeed
	--change the transparency of the ship every time it moves so that it fades out 
	beetleship2.alpha = beetleship2.alpha - 0.0001
	
end

--MoveShip will be called over and over again
Runtime:addEventListener("enterFrame", MoveShip)

