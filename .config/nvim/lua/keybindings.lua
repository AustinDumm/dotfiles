local telescope_config = {
    layout_config = {
        preview_width = 0.6,
    },
}

local function tb(callback)
    return function()
        callback(require("trailblazer"))
    end
end

local wk = require("which-key")
wk.register({
        ["<leader>"] = {
            i = { "<cmd>IconPickerNormal<cr>", "[i]con Picker" },
            s = { "<Plug>(leap-forward-to)", "[s]kip Forward" },
            S = { "<Plug>(leap-backward-to)", "[S]kip Backward" },
            n = {
                name = "Sessio[n]",
                l = { "<cmd>SessionManager load_last_session<cr>", "[l]ast" },
                n = { "<cmd>SessionManager load_session<cr>", "[s]earch" },
            },
            d = { function() require("oil").open_float() end, "Open [d]irectory" },
            f = {
                name = "[f]ind",
                f = { function() require("telescope.builtin").find_files(telescope_config) end, "[f]iles" },
                g = { function() require("telescope.builtin").live_grep(telescope_config) end, "[g]rep" },
                b = { function() require("telescope.builtin").buffer(telescope_config) end, "[b]uffer" },
                h = { function() require("telescope.builtin").help_tags(telescope_config) end, "[h]elp" },
                r = { function() require("telescope.builtin").registers(telescope_config) end, "[r]egisters" },
                m = { function() require("telescope.builtin").marks() end, "[m]arks" },
                w = { function() require("telescope").extensions.projects.projects() end, "[w]orkspace" },
            },
            m = {
                name = "Trailblazer [m]arks",
                s = { tb(function(t) t.new_trail_mark() end), "[s]et" },
                b = { tb(function(t) t.track_back() end), "[b]ack" },
                d = { tb(function(t) t.peek_move_next_down() end), "peek [d]own" },
                u = { tb(function(t) t.peek_move_previous_up() end), "peek [u]p" },
                n = { tb(function(t) t.move_to_nearest() end), "[n]earest" },
                l = { tb(function(t) t.toggle_trail_mark_list() end), "[l]ist" },
                X = { tb(function(t) t.delete_all_trail_marks() end), "[X] Delete All" },
                p = { tb(function(t) t.paste_at_last_trail_mark() end), "[p]aste at Last Mark" },
                P = { tb(function(t) t.paste_at_all_trail_marks() end), "[P]aste at All Marks" },
                M = { tb(function(t) t.set_trail_mark_select_mode() end), "Select [M]ode" },
                ["."] = { tb(function(t) t.switch_to_next_trail_mark_stack() end), "Next Stack" },
                [","] = { tb(function(t) t.switch_to_previous_trail_mark_stack() end), "Previous Stack" },
            },
            x = {
                name = "Trouble",
                x = { "<cmd>TroubleToggle<cr>", "Toggle" },
                w = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "[w]orkspace" },
                d = { "<cmd>TroubleToggle document_diagnostics<cr>", "[d]ocument" },
                l = { "<cmd>TroubleToggle loclist<cr>", "[l]ist" },
                q = { "<cmd>TroubleToggle quickfix<cr>", "[q]uickfix" },
            },
            l = {
                name = "[l]anguage",
                y = { function() vim.diagnostic.open_float() end, "Wh[y]?" },
                p = { function() vim.diagnostic.goto_prev() end, "[p]revious" },
                n = { function() vim.diagnostic.goto_next() end, "[n]ext" },
                s = { function() vim.diagnostic.setloclist() end, "[s]et loclist" },
                f = { function() vim.lsp.buf.format { async = true } end, "[f]ormat" },
                a = { function() vim.lsp.buf.code_action() end, "[a]ction" },
                r = { function() vim.lsp.buf.rename() end, "[r]ename" },

            },
        },
    },
    {
        silent = true,
        noremap = true,
    }
)
