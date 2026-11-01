return {
  {
    -- The `main` branch is the nvim-treesitter rewrite for Neovim 0.12+; the old
    -- `master` branch (with `nvim-treesitter.configs`) is frozen and breaks on 0.12.
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      local ts = require("nvim-treesitter")

      ts.install({
        "bash",
        "ruby",
        "html",
        "css",
        "scss",
        "javascript",
        "typescript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "regex",
      })

      -- Replaces the old `auto_install` + `highlight` options: install a missing
      -- parser on first use, then start highlighting for the buffer.
      local available = {}
      for _, lang in ipairs(ts.get_available()) do
        available[lang] = true
      end

      vim.api.nvim_create_autocmd("FileType", {
        group = vim.api.nvim_create_augroup("treesitter-start", { clear = true }),
        callback = function(args)
          local lang = vim.treesitter.language.get_lang(vim.bo[args.buf].filetype)
          if not lang then
            return
          end

          if pcall(vim.treesitter.start, args.buf, lang) then
            return
          end

          if available[lang] and not vim.list_contains(ts.get_installed(), lang) then
            ts.install(lang):await(function()
              if vim.api.nvim_buf_is_valid(args.buf) then
                pcall(vim.treesitter.start, args.buf, lang)
              end
            end)
          end
        end,
      })
    end,
  },
}
