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
wk.add({
    { "<leader>i", "<cmd>IconPickerNormal<cr>", desc = "[i]con Picker", silent = true, noremap = true },
    { "<leader>s", "<Plug>(leap-forward-to)", desc = "[s]kip Forward", silent = true, noremap = true },
    { "<leader>S", "<Plug>(leap-backward-to)", desc = "[S]kip Backward", silent = true, noremap = true },
    { "<leader>n", group = "Sessio[n]" },
    { "<leader>nl",  "<cmd>SessionManager load_last_session<cr>", desc = "[l]ast", silent = true, noremap = true },
    { "<leader>nn", "<cmd>SessionManager load_session<cr>", desc = "[s]earch", silent = true, noremap = true },
    { "<leader>d", function() require("oil").open_float() end, desc = "Open [d]irectory", silent = true, noremap = true },
    { "<leader>f", group = "[f]ind" },
    { "<leader>ff", function() require("telescope.builtin").find_files(telescope_config) end, desc = "[f]iles", silent = true, noremap = true },
    { "<leader>fg", function() require("telescope.builtin").live_grep(telescope_config) end, desc = "[g]rep", silent = true, noremap = true },
    { "<leader>fb", function() require("telescope.builtin").buffers(telescope_config) end, desc = "[b]uffer", silent = true, noremap = true },
    { "<leader>fh", function() require("telescope.builtin").help_tags(telescope_config) end, desc = "[h]elp", silent = true, noremap = true },
    { "<leader>fr", function() require("telescope.builtin").registers(telescope_config) end, desc = "[r]egisters", silent = true, noremap = true },
    { "<leader>fm", function() require("telescope.builtin").marks() end, desc = "[m]arks", silent = true, noremap = true },
    { "<leader>fw", function() require("telescope").extensions.projects.projects() end, desc = "[w]orkspace", silent = true, noremap = true },
    { "<leader>m", group = "Trailblazer [m]arks" },
    { "<leader>ms", tb(function(t) t.new_trail_mark() end), desc = "[s]et", silent = true, noremap = true },
    { "<leader>mb", tb(function(t) t.track_back() end), desc = "[b]ack", silent = true, noremap = true },
    { "<leader>md", tb(function(t) t.peek_move_next_down() end), desc = "peek [d]own", silent = true, noremap = true },
    { "<leader>mu", tb(function(t) t.peek_move_previous_up() end), desc = "peek [u]p", silent = true, noremap = true },
    { "<leader>mn", tb(function(t) t.move_to_nearest() end), desc = "[n]earest", silent = true, noremap = true },
    { "<leader>ml", tb(function(t) t.toggle_trail_mark_list() end), desc = "[l]ist", silent = true, noremap = true },
    { "<leader>mX", tb(function(t) t.delete_all_trail_marks() end), desc = "[X] Delete All", silent = true, noremap = true },
    { "<leader>mp", tb(function(t) t.paste_at_last_trail_mark() end), desc = "[p]aste at Last Mark", silent = true, noremap = true },
    { "<leader>mP", tb(function(t) t.paste_at_all_trail_marks() end), desc = "[P]aste at All Marks", silent = true, noremap = true },
    { "<leader>mM", tb(function(t) t.set_trail_mark_select_mode() end), desc = "Select [M]ode", silent = true, noremap = true },
    { "<leader>m.", tb(function(t) t.switch_to_next_trail_mark_stack() end), desc = "Next Stack", silent = true, noremap = true },
    { "<leader>m,", tb(function(t) t.switch_to_previous_trail_mark_stack() end), desc = "Previous Stack", silent = true, noremap = true },
    { "<leader>x", group = "Trouble" },
    { "<leader>xx", "<cmd>TroubleToggle<cr>", desc = "Toggle", silent = true, noremap = true },
    { "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "[w]orkspace", silent = true, noremap = true },
    { "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", desc = "[d]ocument", silent = true, noremap = true },
    { "<leader>xl", "<cmd>TroubleToggle loclist<cr>", desc = "[l]ist", silent = true, noremap = true },
    { "<leader>xq", "<cmd>TroubleToggle quickfix<cr>", desc = "[q]uickfix", silent = true, noremap = true },
    { "<leader>l", group = "[l]anguage" },
    { "<leader>ly", function() vim.diagnostic.open_float() end, desc = "Wh[y]?", silent = true, noremap = true },
    { "<leader>lp", function() vim.diagnostic.goto_prev() end, desc = "[p]revious", silent = true, noremap = true },
    { "<leader>ln", function() vim.diagnostic.goto_next() end, desc = "[n]ext", silent = true, noremap = true },
    { "<leader>ls", function() vim.diagnostic.setloclist() end, desc = "[s]et loclist", silent = true, noremap = true },
    { "<leader>lf", function() vim.lsp.buf.format { async = true } end, desc = "[f]ormat", silent = true, noremap = true },
    { "<leader>la", function() vim.lsp.buf.code_action() end, desc = "[a]ction", silent = true, noremap = true },
    { "<leader>lr", function() vim.lsp.buf.rename() end, desc = "[r]ename", silent = true, noremap = true },
    { "<leader>g", group = "[g]it" },
    { "<leader>gg", function() require("neogit").open() end, desc = "[g]it", silent = true, noremap = true }
    }
)
