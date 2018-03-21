-- Title: Animating Iages
-- Name: Desmy Michaelis-Joseph
-- Course: ICS2O/3C
-- This program displays 3 images moving in different directions,
--with some coloured text ana d background.

local function Moveship(event)
	--add the scroll speed to the x-value of the ship
	beetleship.y = beetleship.y + scrollSpeedbeetleship
--change the transparency of the ship every time it moves so that it fades out
beetleship.alpha = beetlseship.alpha + 0.01

--changes the direction when it reaches the end of the screen
 if(beetleship.y > 250) then 
	scrollSpeedBeetleship = -3
 end

 if (beetleship.y < 85) then
	scrollSpeedBeetleship = 4
 end

end

local function Moveship(event)
	--add the scroll speed to the x-value of the ship
	beetleship.x = beetleship + scrollSpeed
	--change the of the ship every time it moves so that it fades out
	beetleship.alpha = beethlehip.alpha + 0.01
end

local function Moveship(event)
	--add the scroll speed to the x-value of the ship
	beetleship.x = beetleship + scrollSpeed
	--change the of the ship every time it moves so that it fades out
	beetleship.alpha = beethlehip.alpha + 0.01
end