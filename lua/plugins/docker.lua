-- Docker support: Dockerfile + Compose suggestions like VSCode (Ctrl+Space)
-- Provides dockerls + docker_compose_language_service via Mason + blink.cmp
---@type LazySpec
return {
  {
    "AstroNvim/astrolsp",
    optional = true,
    opts = {
      -- enable these servers even if not installed via mason
      servers = { "dockerls", "docker_compose_language_service" },
    },
  },
  {
    "williamboman/mason-lspconfig.nvim",
    optional = true,
    opts = {
      ensure_installed = { "dockerls", "docker_compose_language_service" },
    },
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    optional = true,
    opts = {
      ensure_installed = { "dockerfile-language-server", "docker-compose-language-service" },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    optional = true,
    opts = {
      ensure_installed = { "dockerfile", "yaml" },
    },
  },
  {
    "AstroNvim/astrocore",
    optional = true,
    opts = {
      filetypes = {
        filename = {
          ["Dockerfile"] = "dockerfile",
          ["docker-compose.yml"] = "yaml.docker-compose",
          ["docker-compose.yaml"] = "yaml.docker-compose",
          ["compose.yml"] = "yaml.docker-compose",
          ["compose.yaml"] = "yaml.docker-compose",
        },
        pattern = {
          ["Dockerfile%..*"] = "dockerfile",
          [".*/compose/.*%.ya?ml"] = "yaml.docker-compose",
        },
      },
    },
  },
}
