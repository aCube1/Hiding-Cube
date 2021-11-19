local Core = {}

function Core:__call(args)
	dofile("src/core/defaults.lua")
	dofile("src/core/debugger.lua")

	assert(loadfile("src/core/methods.lua"))(Core)
end

function Core:update(dt)
	_G.FPS = love.timer.getFPS()

	_G.Debug:update(dt)
end

function Core:render()
	_G.Debug:render()
end

Core.__index = Core
return setmetatable({}, Core)
