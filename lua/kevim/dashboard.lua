local header_art = {
 "",
 "",
 " ███╗   ██╗ ██╗   ██╗ ██╗ ███╗   ███╗",
 " ████╗  ██║ ██║   ██║ ██║ ████╗ ████║",
 " ██╔██╗ ██║ ██║   ██║ ██║ ██╔████╔██║",
 " ██║╚██╗██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
 " ██║ ╚████║  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
 " ╚═╝  ╚═══╝   ╚═══╝   ╚═╝ ╚═╝     ╚═╝",
 "",
 "",
}

vim.g.dashboard_default_executive = "telescope"
local dynamic_header = vim.fn.winheight(0) > 18 and header_art or {"",""}
local db = require("dashboard")

vim.cmd [[runtime plugin/vim-tips.vim]]

db.setup({
  theme = "doom",
  config = {
    header = dynamic_header,
    --[[ week_header = { ]]
    --[[     enable = true, ]]
    --[[ }, ]]
    center = {
      {
        icon = "  ",
        desc = "new",
        desc_hl = "DashboardDesc",
        key = "e",
        key_hl = "DashboardShortCut",
        action = ":enew"
      },
      {
        icon = "  ",
        desc = "search",
        desc_hl = "DashboardDesc",
        key = "C-p",
        key_hl = "DashboardShortCut",
        action = "Telescope find_files theme=ivy"
      },
      {
        icon = "  ",
        desc = "recent",
        desc_hl = "DashboardDesc",
        key = "r",
        key_hl = "DashboardShortCut",
        action = "Telescope oldfiles theme=dropdown"
      },
      {
        icon = "  ",
        desc = "grep",
        desc_hl = "DashboardDesc",
        key = "C-F",
        key_hl = "DashboardShortCut",
        action = "Telescope live_grep"
      },
      {
        icon = "  ",
        desc = "harpoon",
        desc_hl = "DashboardDesc",
        key = "spc+tab",
        key_hl = "DashboardShortCut",
        action = "lua require('harpoon.ui').toggle_quick_menu()<cr>"
      },
      {
        icon = "󰒓  ",
        desc = "config",
        desc_hl = "DashboardDesc",
        key = "c",
        key_hl = "DashboardShortCut",
        action = "edit ~/.config/nvim/init.lua"
      },
      {
        icon = "󰅖  ",
        desc = "quit",
        desc_hl = "DashboardDesc",
        key = "q",
        key_hl = "DashboardShortCut",
        action = "q!"
      },
    },
  }
})
