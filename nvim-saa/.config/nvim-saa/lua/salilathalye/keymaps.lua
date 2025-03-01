-- Open parent directory of current file
vim.keymap.set("n", "-", "<CMD>Oil --float<CR>", { desc = "Open parent directory" })

-- Show current diagnostic in a float
vim.keymap.set("n", "gl", vim.diagnostic.open_float, { desc = "Show Diagnostic" })

-- Show lsp hover on CTRL-K as well as the SHIFT-K default
vim.keymap.set("n", "<C-K>", vim.lsp.buf.hover, { desc = "LSP: Show [H]over" })

-- Toggle diagnostic view
vim.keymap.set("n", "<Leader>ud", function()
  vim.diagnostic.enable(not vim.diagnostic.is_enabled())
end, { desc = "Toggle [D]iagnostics" })

-- Delete words with CTRL-Backspace/Alt-Backspace in insert mode
vim.keymap.set("i", "<C-BS>", "<C-w>", { noremap = true, silent = true })
vim.keymap.set("i", "<M-BS>", "<C-w>", { noremap = true, silent = true })

-- Jump to windows based on their window number using <Leader>number
-- Allowed for window numbers 1-6
for i = 1, 6 do
  local keys = "<Leader>" .. i
  local target = i .. "<C-W>w"
  vim.keymap.set("n", keys, target, { desc = "Jump to to Window " .. i })
end

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- LSP based fzf supported keymaps
-- Only register for buffers, where the LSP actually attached.

vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("keymaps-lsp-attach", { clear = true }),
  callback = function()
    -- Jump to the definition of the word under your cursor.
    --  This is where a variable was first declared, or where a function is defined, etc.
    --  To jump back, press <C-t>.

    --
    -- All of the follwoing gX keybindings are a little more
    -- involved, as we are checking first if there is only one
    -- match. If there is we directly go there. Otherwise we open
    -- fzf-lua for the results.
    --

    -- [G]oto [D]efinition(s)
    vim.keymap.set("n", "gd", function()
      local params = vim.lsp.util.make_position_params()
      vim.lsp.buf_request(0, "textDocument/definition", params, function(_, result)
        local items = result
        if type(result) == "table" and result.result then
          items = result.result
        end

        if not items or vim.tbl_isempty(items) then
          vim.notify("No definition found", vim.log.levels.ERROR)
        elseif #items == 1 then
          vim.lsp.buf.definition(params)
        else
          require("fzf-lua").lsp_definitions()
        end
      end)
    end, { desc = "[G]oto [D]efinition(s)" })

    -- [G]oto [R]eference(s)
    vim.keymap.set("n", "gr", function()
      local params = vim.lsp.util.make_position_params()
      params.context = { includeDeclaration = true }
      vim.lsp.buf_request(0, "textDocument/references", params, function(_, result)
        local items = result
        if type(result) == "table" and result.result then
          items = result.result
        end

        if not items or vim.tbl_isempty(items) then
          vim.notify("No references found", vim.log.levels.ERROR)
        else
          require("fzf-lua").lsp_references()
        end
      end)
    end, { desc = "[G]oto [R]eference(s)" })

    -- [G]oto [I]mplementation(s)
    vim.keymap.set("n", "gI", function()
      local params = vim.lsp.util.make_position_params()
      vim.lsp.buf_request(0, "textDocument/implementation", params, function(_, result)
        local items = result
        if type(result) == "table" and result.result then
          items = result.result
        end

        if not items or vim.tbl_isempty(items) then
          vim.notify("No implementation found", vim.log.levels.ERROR)
        elseif #items == 1 then
          vim.lsp.buf.implementation(params)
        else
          require("fzf-lua").lsp_implementations()
        end
      end)
    end, { desc = "[G]oto [I]mplementation(s)" })

    -- [G]oto [D]eclaration
    vim.keymap.set("n", "gD", function()
      -- Check if declaration is supported
      local clients = vim.lsp.get_active_clients({ bufnr = 0 })
      local has_support = false
      for _, client in ipairs(clients) do
        if client.supports_method("textDocument/declaration") then
          has_support = true
          break
        end
      end

      if not has_support then
        vim.notify("LSP method textDocument/declaration not supported", vim.log.levels.ERROR)
        return
      end

      local params = vim.lsp.util.make_position_params()
      vim.lsp.buf_request(0, "textDocument/declaration", params, function(_, result)
        local items = result
        if type(result) == "table" and result.result then
          items = result.result
        end

        if not items or vim.tbl_isempty(items) then
          vim.notify("No declaration found", vim.log.levels.ERROR)
        elseif #items == 1 then
          vim.lsp.buf.declaration(params)
        else
          require("fzf-lua").lsp_declarations()
        end
      end)
    end, { desc = "[G]oto [D]eclaration" })

    -- Jump to the type of the word under your cursor.
    --  Useful when you're not sure what type a variable is and you want to see
    --  the definition of its *type*, not where it was *defined*.
    vim.keymap.set("n", "<leader>D", require("fzf-lua").lsp_typedefs, { desc = "Type [D]efinition" })

    -- Rename the variable under your cursor.
    --  Most Language Servers support renaming across files, etc.
    vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename, { desc = "[R]ename" })

    -- Execute a code action, usually your cursor needs to be on top of an error
    -- or a suggestion from your LSP for this to activate.
    vim.keymap.set({ "n", "x" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "[C]ode [A]ction" })
  end,
})

-- FZF related general keymaps
local fzf = require("fzf-lua")
vim.keymap.set("n", "<leader>fh", fzf.helptags, { desc = "[F]ind [H]elp" })
vim.keymap.set("n", "<leader>fk", fzf.keymaps, { desc = "[F]ind [K]eymaps" })
vim.keymap.set("n", "<leader>ff", fzf.files, { desc = "[F]ind [F]iles" })
vim.keymap.set("n", "<leader>fp", "<cmd>FzfDirectories<CR>", { desc = "[F]ind [P]aths" })
vim.keymap.set("n", "<leader>fb", fzf.builtin, { desc = "[F]ind [B]uiltin FZF" })
vim.keymap.set("n", "<leader>fw", fzf.grep_cword, { desc = "[F]ind current [W]ord" })
vim.keymap.set("n", "<leader>fW", fzf.grep_cWORD, { desc = "[F]ind current [W]ORD" })
vim.keymap.set("n", "<leader>fG", fzf.live_grep, { desc = "[F]ind by Live [G]rep" })
vim.keymap.set("n", "<leader>fg", fzf.grep_project, { desc = "[F]ind by [G]rep" })
vim.keymap.set("n", "<leader>fd", fzf.diagnostics_document, { desc = "[F]ind [D]iagnostics" })
vim.keymap.set("n", "<leader>fr", fzf.resume, { desc = "[F]ind [R]esume" })
vim.keymap.set("n", "<leader>fo", fzf.oldfiles, { desc = "[F]ind [O]ld Files" })
vim.keymap.set("n", "<leader><leader>", fzf.buffers, { desc = "[,] Find existing buffers" })
vim.keymap.set("n", "<leader>/", fzf.lgrep_curbuf, { desc = "[/] Live grep the current buffer" })
vim.keymap.set("n", "<leader>fs", require("fzf-lua").lsp_workspace_symbols, { desc = "[F]ind Workspace [S]ymbols" })
-- This one I usually use more seldom, than the workspace one, therefore it is mapped to shift-s
vim.keymap.set("n", "<leader>fS", require("fzf-lua").lsp_document_symbols, { desc = "[F]ind Document [S]ymbols" })
-- Search in neovim config
vim.keymap.set("n", "<leader>fc", function()
  fzf.files({ cwd = vim.fn.stdpath("config") })
end, { desc = "[F]ind Neovim [C]onfig files" })
-- Search in TODOs, FIXMEs, HACKs, via todo-comments.nvim
vim.keymap.set("n", "<leader>ft", function()
  require("todo-comments.fzf").todo()
end, { desc = "[F]ind [T]odos, Fixmes, Hacks, ..." })
-- Navigate between TODOs and such
vim.keymap.set("n", "]t", function()
  require("todo-comments").jump_next()
end, { desc = "Next todo comment" })
vim.keymap.set("n", "[t", function()
  require("todo-comments").jump_prev()
end, { desc = "Previous todo comment" })

-- Toggle undotree
-- FIXME: Maybe there is a faster more current way of showing this undo history?
vim.keymap.set("n", "<leader>uu", function()
  vim.cmd.UndotreeToggle()
end, { remap = false, desc = "Toggle [U]ndoTree [U]i" })

-- Keep the selection if indentlevel is changed
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Toggle copilot completion on <leader>uc
vim.keymap.set("n", "<leader>uc", function()
  vim.g.copilot_completion_enabled = not vim.g.copilot_completion_enabled
  if vim.g.copilot_completion_enabled then
    vim.cmd("Copilot enable")
  else
    vim.cmd("Copilot disable")
  end
end, { desc = "Toggle [C]opilot" })
