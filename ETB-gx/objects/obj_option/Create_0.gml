options = [
	["Resolution", 0],
	["Screen Scale", 1],
	["Anti-Aliasing", false],
	["Fullscreen", false],
	["Screen Shake", true],
	["VSYNC", false],
	["Disable Shaders", false],
	["Reset To Defaults", 0]
];
select = 0;
if (global.force_disable_shaders) options[6][1] = true;