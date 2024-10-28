local wezterm = require 'wezterm'
local act     = wezterm.action
local config  = {}

config.automatically_reload_config = true

config.font      = wezterm.font 'Hack Nerd Font Mono'
config.font_size = 14.5

config.window_background_opacity    = 0.8
config.macos_window_background_blur = 15

-- config.color_scheme = 'Railscasts (dark) (terminal.sexy)'
config.color_scheme = 'cyberpunk'

-- Override Color Scheme Colors
config.colors = {
  background = '#000000'
}

-- Set up Keybinds
config.keys = {
  -- Move to the Last Tab
  {
    key    = 'LeftArrow',
    mods   = 'SUPER',
    action = act.ActivateTabRelative(-1)
  },

  -- Move to the Next Tab
  {
    key    = 'RightArrow',
    mods   = 'SUPER',
    action = act.ActivateTabRelative(1)
  },

  -- Close Tab without confirmation
  {
    key    = 'w',
    mods   = 'CMD',
    action = wezterm.action.CloseCurrentPane { confirm = false }
  },

  -- Control Palette
  {
    key    = 'P',
    mods   = 'SUPER|SHIFT',
    action = wezterm.action.ActivateCommandPalette
  },

  -- Rename Tab
  {
    key    = 'R',
    mods   = 'SUPER|SHIFT',
    action = act.PromptInputLine {
      description = 'Enter new name for this tab',

      action = wezterm.action_callback(function(window, _, line)
        if line then
          window:active_tab():set_title(line)
        end
      end)
    }
  }
}

return config

