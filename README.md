Hey, follow this step to get your neovim configure.

1) Create a config directory
2) In the config directory, create another directory as of mine I named it nvim.
3) Do create another directory inside the nvim directory as lua.
4) After you created the lua directory, create another directory in that as your name or whatever you want it to be
5) Inside the lua directory you should create file name it init.lua and paste the code that I provided in this repo.
6) As I assumed that you created a directory in the the lua with your name or whatever you prefer and now add lazy.lua file under that directory.
7) Now, you should add two more directory under the same directory that you created lazy.lua file and call it core and plugins.
8) Inside the core directory, create three lua files: initcore.lua, keymaps.lua, and options.lua
9) For the plugins directory add these files:
   - alpha.lua,
   - auto-session.lua,
   - autopairs.lua,
   - bufferline.lua,
   - colorscheme.lua,
   -  comment.lua,
   -  dressing.lua,
   -  formatting.lua,
   -  gitsigns.lua,
   -  indent-blankline.lua,
   -  initplugin.lua,
   -  lazygit.lua,
   -  linting.lua,
   -  lualie.lua,
   -  nvim-cmp.lua,
   -  nvim-tree.lua,
   -   substitute.lua,
   -   surround.lua,
   -   telescope.lua,
   -   todo-comments.lua,
   -   treesitter.lua,
   -   trouble.lua,
   -   vim-maximizer.lua,
   -   which-key.lua

  Inside the plugins directory, create another directory and name it lsp.
  Add two files: lspconfig.lua and mason.lua.

  Now the fun part, just copy and paste all the files accordingly. Goodluck!!
