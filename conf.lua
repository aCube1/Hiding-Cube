function love.conf(cfg)
	cfg.identity = "hiding cube"
	cfg.version = 11.3

	cfg.title = "Hiding Cube"
	cfg.window.icon = nil
	cfg.window.width = 800
	cfg.window.height = 600
	cfg.window.resizable = false
	cfg.window.borderless = false
	cfg.window.vsync = 1

	cfg.modules.joystick = false
end
