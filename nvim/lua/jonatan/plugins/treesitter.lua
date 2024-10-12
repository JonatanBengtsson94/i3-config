return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    local treesitter = require("nvim-treesitter.configs")

    -- config treesitter
    treesitter.setup({ --syntax highlighting
      highlight = {
        enable = true,
      },
      -- indentation
      indent = { enable = true },
      -- autotag
      autotag = { enable = true },
      -- ensure this language parsers are installed
      ensure_installed = {
      "json",
      "javascript",
      "html",
      "css",
      "markdown",
      "bash",
      "lua",
      "vim",
      "vimdoc",
      "c",
      "gitignore",
      },
      -- incremental selection
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })
  end
}
