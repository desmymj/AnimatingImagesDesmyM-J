-- Title: Animating Iages
-- Name: Desmy Michaelis-Joseph
-- Course: ICS2O/3C
-- This program displays 3 images moving in different directions,
--with some coloured text and background.

--displays a background image with width and height
local backgroundimage = display.newImageRect("Images/background.jpg", 2048,1536)

--local zombie 1
local zombie1 = display.newImageRect("Images/zombie1.png", 100,100)
local zombie2 = display.newImageRect("Images/zombie2.png", 100,100)
local zombie3 = display.newImageRect("Images/zombie3.png", 100,100)
local zombie4 = display.newImageRect("Images/zombie4.png", 100,100)

--set the x and y co/rdonates
zombie1

--makes the object opaque
zombie2.alpha = 1

--create text object, set its position and make it invisble
local attackText
attackText = display.newText("attack",725,700,nil,60)
attackText:setTextColor(0,0,1)
attackText.isVisible = false

--Hide the status bar
display.setStatusBar(display.HiddenStatusBar)

--Global variables for the speeds of the characters
scrollSpeed1 = 5
scrollSpeed2 = 5
scrollSpeed3 = 5

--Function: Movezombie1
--Input: this function accepts an event listener
--Output: none
--Description: This function adds the scroll speed tp the x-value of the zombie1


local function Movezombie1(event)
	--add the scroll speed to the x-value of the ship
	zombie1.y = zombie1.y + scrollSpeed1
--change the transparency of the ship every time it moves so that it fades out
zombie1.alpha = zombie1.alpha + 0.01
 
--changes the direction when it reaches the end of the screen
 if(zombie1.y > 250) then 
	scrollSpeed1 = -3
 end

 if (zombie1.y < 85) then
	scrollSpeed1 = 4
 end
if (zombie1.y > zombie4.y)then
	attackText.isVisible = true
end

--Function: Movezombie2
--Input: this function accepts an event listener
--Output: none
--Description: This function adds the scroll speed tp the x-value of the zombie2

local function Movezombie2(event)
	--add the scroll speed to the x-value of the ship
	zombie2.x = zombie2.x + scrollSpeed2
	--change the of the ship every time it moves so that it fades out
	zombie2.alpha = zombie2.alpha - 0.01
end

--changes the direction when it reaches the end of the screen
 if(zombie2.x > 250) then 
	scrollSpeed2 = -3
 end

 if (zombie2.x < 85) then
	scrollSpeed2 = 4
 end

end

--Function: Movezombie3
--Input: this function accepts an event listener
--Output: none
--Description: This function adds the scroll speed tp the x-value of the zombie3

local function Movezombie3(event)
	--add the scroll speed to the x-value of the ship
	zombie3.x = zombie3.x + scrollSpeed3
	--change the of the ship every time it moves so that it fades out
	zombie3.alpha = zombie3.alpha + 0.01
end

--changes the direction when it reaches the end of the screen
 if(zombie3.x > 250) then 
	scrollSpeed3 = -3
 end

 if (zombie3.x < 85) then
	scrollSpeed3 = 4
 end



--Function: Movezombie4
--Input: this function accepts an event listener
--Output: none
--Description: This function rotates the image zombie4

local function Movezombie4(event)
--makes the zombie rotate clockwise
zombie4.rotation = zombie4.rotation + 0.5
end

--movezombie1 will be called over and over again
Runtime:addEventListener("enterFrame", movezombie1)

--movezombie2 will be called over and over again
Runtime:addEventListener("enterFrame", movezombie2)

--movezombie3 will be called over and over again
Runtime:addEventListener("enterFrame", movezombie3)

--movezombie4 will be called over and over again
Runtime:addEventListener("enterFrame", movezombie4)