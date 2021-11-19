local Core = require("src/core")

function love.load(args)
	Core(args)
end

function love.update(dt)
	Core:update(dt)
end

function love.draw()
	Core:render()
end
