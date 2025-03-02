require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "lua", "ruby", "vim", "bash" },

  -- Install parsers synchronously
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
}
