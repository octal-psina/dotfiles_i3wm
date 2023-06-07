require("tokyonight").setup({
  -- use the night style
  style = "moon",
  transparent = true,
  terminal_colors = true,
  -- disable italic for functions
  styles = {
    sidebars = "transparent",
    floats = "transparent",
    functions = {}
  },
  sidebars = { "qf", "vista_kind", "terminal", "packer", },
  -- Change the "hint" color to the "orange" color, and make the "error" color bright red
  --on_colors = function(colors)
  --  colors.hint = colors.orange
  --  colors.error = "#ff0000"
  --end
})
--vim.g.tokyonight = true
vim.cmd[[colorscheme tokyonight]] 
