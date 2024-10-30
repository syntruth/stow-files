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
  border_left_color    = '#ffffff',
  border_right_color   = '#ffffff',
  border_bottom_color  = '#ffffff',

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

config.color_scheme = 'Railscasts (dark) (terminal.sexy)'
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
  -- Move to the Last, to the Left, Tab
  {
    key    = 'LeftArrow',
    mods   = 'SUPER',
    action = act.ActivateTabRelative(-1)
  },

  -- Move to the Next, to the Right, Tab
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

