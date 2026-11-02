-- hop.nvim: quick cursor jump like EasyMotion
---@type LazySpec
return {
  "smoka7/hop.nvim",
  cmd = {
    "HopWord",
    "HopChar1",
    "HopChar2",
    "HopLineStart",
    "HopPattern",
    "HopAnywhere",
  },
  keys = {
    { "<Leader><Leader>w", "<Cmd>HopWord<CR>", mode = { "n", "x" }, desc = "Hop word" },
    { "<Leader><Leader>l", "<Cmd>HopLineStart<CR>", mode = { "n", "x" }, desc = "Hop line" },
    { "<Leader><Leader>f", "<Cmd>HopChar1<CR>", mode = { "n", "x" }, desc = "Hop 1 char" },
    { "<Leader><Leader>F", "<Cmd>HopChar2<CR>", mode = { "n", "x" }, desc = "Hop 2 chars" },
    { "<Leader><Leader>/", "<Cmd>HopPattern<CR>", mode = { "n", "x" }, desc = "Hop pattern" },
    { "<Leader><Leader>a", "<Cmd>HopAnywhere<CR>", mode = { "n", "x" }, desc = "Hop anywhere" },
  },
  opts = {
    keys = "etovxqpdygfblzhckisuran",
  },
  -- `main = "hop"` needed so lazy knows which module to setup;
  -- without this `opts` is ignored and hop stays unconfigured
  main = "hop",
  config = function(_, opts) require("hop").setup(opts) end,
}
