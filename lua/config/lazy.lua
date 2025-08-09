-- Ensure lazy.nvim is installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim with the plugins
require("lazy").setup({
  -- Add the black-metal-theme plugin
  {
    "metalelf0/black-metal-theme-neovim",
    lazy = false,
    priority = 1000,
    config = function()
      require("black-metal").setup({})
      require("black-metal").load("bathory")
    end,
  },

  -- LazyVim setup with the colorscheme option
  {
    "LazyVim/LazyVim",
    import = "lazyvim.plugins",
    opts = {
      -- colorscheme = "black-metal-bathory", -- Uncomment if you want to set the theme
      news = {
        lazyvim = true,
        neovim = true,
      },
    },
  },

  -- Import various LazyVim plugin extras
  { import = "lazyvim.plugins.extras.linting.eslint" },
  { import = "lazyvim.plugins.extras.formatting.prettier" },
  { import = "lazyvim.plugins.extras.lang.typescript" },
  { import = "lazyvim.plugins.extras.lang.json" },
  -- { import = "lazyvim.plugins.extras.lang.markdown" },
  { import = "lazyvim.plugins.extras.lang.rust" },
  { import = "lazyvim.plugins.extras.lang.tailwind" },
  -- { import = "lazyvim.plugins.extras.dap.core" },
  -- { import = "lazyvim.plugins.extras.vscode" },
  { import = "lazyvim.plugins.extras.util.mini-hipatterns" },
  -- { import = "lazyvim.plugins.extras.test.core" },
  -- { import = "lazyvim.plugins.extras.coding.yanky" },
  -- { import = "lazyvim.plugins.extras.editor.mini-files" },
  -- { import = "lazyvim.plugins.extras.util.project" },

  -- Import your custom plugins
  { import = "plugins" },
}, {
  -- Configuration defaults for lazy.nvim
  defaults = {
    lazy = false, -- Load custom plugins immediately
    version = false, -- Always use the latest commit of plugins
  },

  -- Development environment setup
  dev = {
    path = "~/.ghq/github.com", -- Custom development path
  },

  -- Automatically check for plugin updates
  checker = { enabled = true },

  -- Performance optimizations
  performance = {
    cache = {
      enabled = true,
    },
    rtp = {
      -- Disable some default runtime plugins
      disabled_plugins = {
        "gzip",
        "netrwPlugin",
        "rplugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },

  -- Custom key mappings
  ui = {
    custom_keys = {
      ["<localleader>d"] = function(plugin)
        dd(plugin)
      end,
    },
  },

  -- Debugging
  debug = false,
})

