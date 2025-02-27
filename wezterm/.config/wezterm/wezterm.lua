local wezterm = require 'wezterm'
local act     = wezterm.action
local config  = {}

config.automatically_reload_config = true

-- Assure that wezterm has the full $PATH.
config.set_environment_variables = {
  PATH = '/opt/homebrew/bin:' .. os.getenv('PATH'),
}

--
-- General UI Settings
--

config.mouse_wheel_scrolls_tabs       = false
config.show_new_tab_button_in_tab_bar = false
config.hide_tab_bar_if_only_one_tab   = true

config.window_frame = {
  border_left_width    = '0.1cell',
  border_right_width   = '0.1cell',
  border_bottom_height = '0.1cell',
  border_left_color    = 'black',
  border_right_color   = 'black',
  border_bottom_color  = 'black',

  font      = wezterm.font('Hack Nerd Font Mono'),
  font_size = 14
}

--
-- Command Palette Settings
--
config.command_palette_bg_color  = '#000000'
config.command_palette_fg_color  = '#ffffff'
config.command_palette_font_size = 14.5
config.command_palette_rows      = 25

--
-- Visual Appearance Settings
--

-- Font Settings
config.font      = wezterm.font 'Hack Nerd Font Mono'
config.font_size = 14.5

-- Background Settings
config.window_background_opacity    = 0.8
config.macos_window_background_blur = 15

config.color_scheme = 'kanagawabones'
-- config.color_scheme = 'Londontube (dark) (terminal.sexy)'
-- config.color_scheme = 'midnight-in-mojave'
-- config.color_scheme = 'MonaLisa'
-- config.color_scheme = 'Nucolors (terminal.sexy)'
-- config.color_scheme = 'Mathias'
-- config.color_scheme = 'MaterialDesignColors'
-- config.color_scheme = 'Orangish (terminal.sexy)'
-- config.color_scheme = 'Pop (base16)'
-- config.color_scheme = 'One Half Black (Gogh)'
-- config.color_scheme = 'Railscasts (dark) (terminal.sexy)'
-- config.color_scheme = 'Pastel White (terminal.sexy)'
-- config.color_scheme = 'Colors (base16)'
-- config.color_scheme = 'zenbones_dark'
-- config.color_scheme = 'X::DotShare (terminal.sexy)'
-- config.color_scheme = 'Vacuous 2 (terminal.sexy)'
-- config.color_scheme = 'Vibrant Ink (Gogh)'
-- config.color_scheme = 'Ubuntu'

-- Override Color Scheme Colors
config.colors = {
  -- I tend to always like black, transparent backgrounds.
  background = '#000000',

  -- I also tend to always like white foreground colors.
  foreground = '#ffffff',

  -- Always bright white cursor as well.
  cursor_bg = '#ffffff'
}

-- Set up Keybinds
config.keys = {
  -- Change to the Previous Tab
  {
    key    = 'LeftArrow',
    mods   = 'SUPER',
    action = act.ActivateTabRelative(-1)
  },

  -- Change to the Next Tab
  {
    key    = 'RightArrow',
    mods   = 'SUPER',
    action = act.ActivateTabRelative(1)
  },

  -- Move Tab to the Left
  {
    key    = 'LeftArrow',
    mods   = 'SHIFT|SUPER',
    action = act.MoveTabRelative(-1)
  },

  -- Move Tab to the Right
  {
    key    = 'RightArrow',
    mods   = 'SHIFT|SUPER',
    action = act.MoveTabRelative(1)
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

  -- Launcher
  {
    key    = 'L',
    mods   = 'SUPER|SHIFT',
    action = wezterm.action.ShowLauncher
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
  },

  -- Open a Wezterm Config Tab
  {
    key    = ',',
    mods   = 'SUPER',
    action = act.SpawnCommandInNewTab {
      -- Make sure that nvim is in your $PATH!
      args = { 'nvim', wezterm.config_file }
    },
  }
}

return config

