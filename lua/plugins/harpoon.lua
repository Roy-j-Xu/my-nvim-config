return {
    "theprimeagen/harpoon",
    keys = function()
        local harpoon_mark = require("harpoon.mark")
        local harpoon_ui = require("harpoon.ui")
        local harpoon_term = require("harpoon.term")

        local keys = {
            { "<leader>ha", function()
                harpoon_mark.add_file()
                vim.notify("Page added to harpoon")
            end, desc = "Harpoon add file" },

            { "<leader>hh", harpoon_ui.toggle_quick_menu, desc = "Harpoon menu" },

            { "<C-j>", harpoon_ui.nav_prev, desc = "Harpoon prev" },
            { "<C-k>", harpoon_ui.nav_next, desc = "Harpoon ext" },
            { "<leader>t", function() harpoon_term.gotoTerminal(1) end, desc = "Go to terminal 1" },
        }

        for i = 1, 9 do
            table.insert(keys, {
                "<leader>t" .. i,
                function()
                    harpoon_term.gotoTerminal(i)
                end,
                desc = "Go to terminal " .. i,
            })
            table.insert(keys, {
                "<leader>" .. i,
                function()
                    harpoon_ui.nav_file(i)
                end,
                desc = "Go to harpoon " .. i,
            })
        end

        return keys
    end,
}
