local function switch_theme(theme)
	local theme_name = theme.fargs[1]
	vim.cmd("colorscheme " .. theme_name)
	local file = os.getenv("XDG_CONFIG_HOME") .. "/nvim/lua/config/init.lua"
	local f = io.open(file, "r")
	local lines = {}
	for line in f:lines() do
		table.insert(lines, line)
	end
	f.close()

	lines[1] = lines[1]:gsub('".*$', '"' .. theme_name .. '"')

	local w = io.open(file, "w")
	for _, line in ipairs(lines) do
		w:write(line .. "\n")
	end
	w.close()
end

vim.api.nvim_create_user_command("Cs", switch_theme, {
	nargs = 1,
	complete = function(ArgLead, CmdLine, CursorPos)
		-- return completion candidates as a list-like table
		local suggestions = {
			"abscs",
			"doom-one",
			"everblush",
			"horizon",
			"kanagawa-dragon",
			"kanagawa-lotus",
			"kanagawa-wave",
			"melange",
			"mellow",
			"obscure",
			"oxocarbon",
      "rose-pine",
      "rose-pine-dawn",
      "rose-pine-main",
      "rose-pine-moon",
			"tokyonight",
			"tokyonight-night",
			"tokyonight-storm",
			"tokyonight-day",
			"NeoSolarized",
			"vscode",
		}
		return suggestions
	end,
})

vim.cmd("colorscheme " .. Active_scheme)
