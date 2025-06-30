local wezterm = require "wezterm"

return {
  font = wezterm.font_with_fallback {
    {
      family = "JetBrainsMono Nerd Font",
      weight = "Bold",
      harfbuzz_features = { "calt=1", "clig=1", "liga=1" },
    },
  },
  font_size = 10,
  bold_brightens_ansi_colors = true,

  color_scheme = "GruvboxDark",

  enable_tab_bar = true,
  use_fancy_tab_bar = true,
  hide_tab_bar_if_only_one_tab = true,
  tab_bar_at_bottom = true,

  window_frame = {
    font_size = 8.5, -- ukuran font tab
  },

  colors = {
    tab_bar = {
      background = "#1d2021",

      active_tab = {
        bg_color = "#fabd2f",
        fg_color = "#1d2021",
        intensity = "Bold",
        underline = "None",
        italic = false,
        strikethrough = false,
      },

      inactive_tab = {
        bg_color = "#3c3836",
        fg_color = "#d5c4a1",
      },

      inactive_tab_hover = {
        bg_color = "#504945",
        fg_color = "#ffffff",
        italic = true,
      },

      new_tab = {
        bg_color = "#1d2021",
        fg_color = "#928374",
      },

      new_tab_hover = {
        bg_color = "#282828",
        fg_color = "#ebdbb2",
        italic = true,
      },
    },
  },

  window_padding = {
    left = 4,
    right = 4,
    top = 2,
    bottom = 2,
  },

  default_prog = { "/usr/bin/fish", "-l" },
}
