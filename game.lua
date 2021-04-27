pigX = love.graphics.getWidth()/2
pigY = love.graphics.getHeight()/2
pigXWidth = 55
pigYHeight = 50

sushiX = 0
sushiY = 0

speed = 13

function addFood()
	math.randomseed(os.time())
	sushiX = math.random(love.graphics.getWidth()-1)
	sushiY = math.random(love.graphics.getHeight()-1)
end

function gameLoad()
	pig = love.graphics.newImage("pig.png")
	food = love.graphics.newImage("sushi.png")
end

function gameDraw()
	love.graphics.draw(pig,pigX,pigY)
	love.graphics.draw(food,sushiX,sushiY)
	red = 74/255
	green = 255/255
	blue = 0/255
	color = { red, green, blue}
	love.graphics.setBackgroundColor( color)
end

function gameUpdate()
	gameMove()
	gameBoundaries()
	addFood()
end

function gameMove()
	if love.keyboard.isDown("up") then
		pigY = pigY - speed
	elseif love.keyboard.isDown("down") then
		pigY = pigY + speed
	elseif love.keyboard.isDown("left") then
		pigX = pigX - speed
	elseif love.keyboard.isDown("right") then
		pigX = pigX + speed
	end
end

function gameBoundaries()
	if pigY < 0 then
		pigY = 0
	elseif pigY + pigYHeight > love.graphics.getHeight() then
		pigY = love.graphics.getHeight() - pigYHeight
	elseif pigX < 0 then
		pigX = 0
	elseif pigX + pigXWidth > love.graphics.getWidth() then
		pigX = love.graphics.getWidth() - pigXWidth
	end
end
