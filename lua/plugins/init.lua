return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "mfussenegger/nvim-lint",
    event = {
      "BufWritePre",
      "BufNewFile",
    },
    config = function()
      require "configs.nvim-lint"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "luacheck",
        "pyright@1.1.367",
        "mypy",
        "pydocstyle",
        "black",
        "clangd",
        "cpplint",
        "clang-format",
        "dockerfile-language-server@0.12.0",
        "docker-compose-language-service",
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "python",
        "bash",
        "c",
        "cmake",
        "cpp",
      },
    },
  },
}
