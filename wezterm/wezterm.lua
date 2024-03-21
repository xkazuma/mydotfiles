local wezterm = require("wezterm")

local config = {}
if wezterm.config_builder then
	config = wezterm.config_builder()
end

local username = "xkzm"
local domain = "wsl-debian"
local remote_address = "kunzitewsl"
local identityfile = "%%HOME%%\\.ssh\\id_rsa"

config.ssh_domains = {
	{
		name = domain,
		remote_address = remote_address,
		username = username,
		ssh_option = {
			identityfile = identityfile,
		},
		connect_automatically = true,
		remote_wezterm_path = "/usr/bin/wezterm",
		multiplexing = "None",
	},
}
config.default_prog = { "powershell", "-NoLogo" }

config.hide_tab_bar_if_only_one_tab = false
config.use_ime = true
config.font = wezterm.font("PlemolJP Console NF", { weight = "Medium" })
config.font_size = 12
config.window_close_confirmation = "NeverPrompt"
config.enable_scroll_bar = false
config.initial_rows = 80
config.initial_cols = 120
config.default_cursor_style = "BlinkingUnderline"
config.enable_wayland = true

-- ----------------------------
-- My favorite colorschemes
-- 'idea' 'Spacedust' 'Solarized Dark Higher Contrast'
-- 'Slate' 'JetBrains Darcula' 'Jellybeans'
-- ----------------------------
config.color_scheme = "Espresso Libre"

return config
