function math.sign(n)
	return n > 0 and 1 or (n == 0 and 0 or -1)
end

-- NOTE: Engine Setup
love.graphics.setDefaultFilter("nearest", "nearest")

_G.WIDTH, _G.HEIGHT, _G.WINDOW_FLAGS = love.window.getMode()
_G.FPS = love.timer.getFPS()

_G.RESOURCES_PATH = "res/"
_G.DEFAULT_RESTERIZER = love.font.newRasterizer(_G.RESOURCES_PATH .. "fonts/Roboto_Medium.ttf", 14, "mono")
_G.DEFAULT_FONT = love.graphics.setNewFont(_G.DEFAULT_RESTERIZER)

-- NOTE: Debug
_G.DEBUG_KEYS = {
	["f5"] = true,
}

-- NOTE: Physics Data
-- TODO: Add on Player Implementation
