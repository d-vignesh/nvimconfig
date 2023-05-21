local toggleterm = require("toggleterm")

toggleterm.setup({
  size = 20,
  open_mapping = [[<C-\>]],
  hide_numbers = true,
  direction = "float",
  close_on_exit = true,
  float_opts = {
    border = "curved",
    winblend = 0,
    highlights = {
      border = "Normal",
      background = "Normal"
    }
  }
})
