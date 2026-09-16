-- =============================================================================
-- Dakota Hyprland — Hyprland 0.55+ native Lua config
-- Scrolling layout (plan A: native, Hyprland >= 0.53) + Noctalia v5
-- Verified against:
--   https://wiki.hypr.land/Configuring/Layouts/Scrolling-Layout/
--   https://docs.noctalia.dev/noctalia/compositor-settings/hyprland/
--   https://docs.noctalia.dev/v5/ipc/
-- =============================================================================

-- Monitors -------------------------------------------------------------------
hl.monitor({
  output   = "",
  mode     = "preferred",
  position = "auto",
  scale    = "auto",
})

-- General / look and feel ----------------------------------------------------
hl.config({
  general = {
    gaps_in = 6,
    gaps_out = 12,
    border_size = 2,
    layout = "scrolling", -- native scrolling layout (plan A)
    resize_on_border = true,
    col = {
      active_border = { colors = { "rgba(0xcba6f7ee)", "rgba(0x89b4faee)" }, angle = 45 },
      inactive_border = "rgba(0x313244aa)",
    },
  },
  decoration = {
    rounding = 12,
    rounding_power = 2,
    shadow = { enabled = true, range = 4, render_power = 3 },
    blur = { enabled = true, size = 3, passes = 2 },
  },
  input = {
    follow_mouse = 1,
    touchpad = { natural_scroll = true },
  },
})

-- Scrolling layout config ----------------------------------------------------
-- https://wiki.hypr.land/Configuring/Layouts/Scrolling-Layout/
hl.config({
  scrolling = {
    fullscreen_on_one_column = true,
    column_width = 0.5,
    focus_fit_method = 1,     -- 1 = fit focused column into view
    follow_focus = true,
    explicit_column_widths = "0.333, 0.5, 0.667, 1.0",
    wrap_focus = true,
    wrap_swapcol = true,
    direction = "right",      -- new windows appear to the right, tape scrolls right
  },
})

-- Autostart -------------------------------------------------------------------
hl.on("hyprland.start", function()
  hl.exec_cmd("noctalia")                                  -- Noctalia v5 shell
  hl.exec_cmd("systemctl --user start xdg-desktop-portal-hyprland || true")
end)

-- Scrolling keybinds (native scroller dispatchers, from the wiki) -------------
local mainMod = "SUPER"
local lay = "layout"

-- Tape navigation: move focus / scroll the tape column-by-column
hl.bind(mainMod .. "+Left",  hl.dsp.layout("focus l"))
hl.bind(mainMod .. "+Right", hl.dsp.layout("focus r"))
hl.bind(mainMod .. "+Up",    hl.dsp.layout("move -col"))
hl.bind(mainMod .. "+Down",  hl.dsp.layout("move +col"))

-- Column management
hl.bind(mainMod .. "+Tab",   hl.dsp.layout("promote"))            -- new column from window
hl.bind(mainMod .. "+C",     hl.dsp.layout("consume_or_expel prev"))
hl.bind(mainMod .. "+F",     hl.dsp.layout("fit active"))
hl.bind(mainMod .. "+V",     hl.dsp.layout("fit expand"))
hl.bind(mainMod .. "+bracketright",  hl.dsp.layout("colresize +conf"))
hl.bind(mainMod .. "+bracketleft",   hl.dsp.layout("colresize -conf"))
hl.bind(mainMod .. "+Shift+Left",  hl.dsp.layout("swapcol l"))
hl.bind(mainMod .. "+Shift+Right", hl.dsp.layout("swapcol r"))

-- Window / session basics
hl.bind(mainMod .. "+Return", hl.dsp.exec_cmd("foot"))
hl.bind(mainMod .. "+Q", hl.dsp.window.close())
hl.bind(mainMod .. "+E", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. "+L", hl.dsp.exec_cmd("noctalia msg session lock"))
hl.bind(mainMod .. "+Space", hl.dsp.exec_cmd("noctalia msg panel-toggle launcher"))
hl.bind(mainMod .. "+S", hl.dsp.exec_cmd("noctalia msg panel-toggle control-center"))
hl.bind(mainMod .. "+comma", hl.dsp.exec_cmd("noctalia msg settings-toggle"))
hl.bind("ALT+Tab", hl.dsp.exec_cmd("noctalia msg window-switcher"))

-- Workspaces
for i, key in ipairs({ "1", "2", "3", "4", "5" }) do
  hl.bind(mainMod .. "+" .. key,           hl.dsp.focus({ workspace = i }))
  hl.bind(mainMod .. "+SHIFT+" .. key,     hl.dsp.window.move({ workspace = i }))
end

-- Mouse
hl.bind(mainMod .. "+mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. "+mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Noctalia settings window floats --------------------------------------------
hl.window_rule({
  match = { class = "dev.noctalia.Noctalia" },
  float = true,
  size = { 1080, 920 },
})

-- Noctalia surfaces: disable Hyprland layer animations that conflict ---------
hl.layer_rule({
  name = "noctalia",
  match = { namespace = "^noctalia-(bar-.+|notification|dock|panel|attached-panel|osd|window-switcher)$" },
  animation = "none",
})

-- Media keys ------------------------------------------------------------------
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("noctalia msg volume-up"))
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("noctalia msg volume-down"))
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("noctalia msg volume-mute"))
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("noctalia msg brightness-up"))
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("noctalia msg brightness-down"))
