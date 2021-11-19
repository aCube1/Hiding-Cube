_G.Debug = {
	active = true,
	mode = "debug", -- NOTE: Use only "debug" or "release" options
	limit = 0,
	data = {},
}

function _G.Debug:update(dt)
	if self.active then
		self:add_data(("FPS: %.2f | DeltaTime: %.3f"):format(_G.FPS, dt))

		for _, data in ipairs(self.data) do
			local width = _G.DEFAULT_FONT:getWidth(data.text)
			self.limit = width > self.limit and width or self.limit
		end
	end
end

function _G.Debug:render()
	if self.active then
		local x, y = 0, 0

		for i, data in ipairs(self.data) do
			y = (i - 1) * _G.DEFAULT_FONT:getHeight()
			if y > _G.HEIGHT / 2 then
				x = x + self.limit
				y = 0
			end
			love.graphics.push("all")
				love.graphics.setColor(data.color)
				love.graphics.printf(data.text, x, y, self.limit)
			love.graphics.pop()
		end

		self.data = {}
	end
end

function _G.Debug:add_data(data)
	if self.active and self.mode == "debug" then
		if type(data) ~= "table" and type(data) == "string" then
			data = {text = data, color = {1, 1, 1}}
		else
			return
		end
			table.insert(self.data, data)
	end
end
