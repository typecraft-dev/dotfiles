return {
    "ahmedkhalf/project.nvim",
    init = function()
        require("project_nvim").setup {
            -- your configuration comes her
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        }


        -- Absolutely minimal implementation of fzf-lua based project finder
        -- for fzf-lua, due to request from @KrisWilliams1 (Maybe extended to a
        -- full blown port from the original selector in the future)
        local history = require("project_nvim.utils.history")
        local project = require("project_nvim.project")

        vim.api.nvim_create_user_command("FzfProjects", function()
            local projects = history.get_recent_projects()

            require("fzf-lua").fzf_exec(projects, {
                prompt = "Projects> ",
                actions = {
                    ["default"] = function(selected)
                        if selected and #selected > 0 then
                            local project_path = selected[1]
                            if project.set_pwd(project_path, "fzf-lua") then
                                require("fzf-lua").files()
                            end
                        end
                    end
                }
            })
        end, {})
    end,
    keys = {
        {
            "<leader>fp", "<cmd>FzfProjects<CR>", desc="Find Recent Projects"
        }
    }
}
