require("game")
function love.load()
	gameLoad()
	addFood()
end

function love.draw()
	gameDraw()
end

function love.update(dt)
	gameUpdate()
end

function love.keypressed(key)
	if key == "escape" then
		love.event.quit()
	end
end

