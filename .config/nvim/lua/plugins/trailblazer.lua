return {
    "LeonHeidelbach/trailblazer.nvim",
    event = "BufEnter",
    opts = {
        auto_save_trailblazer_state_on_exit = true,
        auto_load_trailblazer_state_on_enter = true,
        trail_options = {
            trail_mark_priority = 10001,
            -- Available modes to cycle through. Remove any you don't need.
            available_trail_mark_modes = {
                "global_chron",
            },
            current_trail_mark_mode = "global_chron",
            current_trail_mark_list_type = "quickfix",     -- currently only quickfix lists are supported
            trail_mark_list_rows = 10,                     -- number of rows to show in the trail mark list
            verbose_trail_mark_select = true,              -- print current mode notification on mode change
            mark_symbol = "•",                           --  will only be used if trail_mark_symbol_line_indicators_enabled = true
            newest_mark_symbol = "",                    -- disable this mark symbol by setting its value to ""
            cursor_mark_symbol = "",                    -- disable this mark symbol by setting its value to ""
            next_mark_symbol = "→",                      -- disable this mark symbol by setting its value to ""
            previous_mark_symbol = "←",                  -- disable this mark symbol by setting its value to ""
            multiple_mark_symbol_counters_enabled = true,
            number_line_color_enabled = true,
            trail_mark_in_text_highlights_enabled = true,
            trail_mark_symbol_line_indicators_enabled = true,     -- show indicators for all trail marks in symbol column
            symbol_line_enabled = true,
            default_trail_mark_stacks = {
                "default",
            },
            available_trail_mark_stack_sort_modes = {
                "alpha_asc",     -- alphabetical ascending
                "alpha_dsc",     -- alphabetical descending
                "chron_asc",     -- chronological ascending
                "chron_dsc",     -- chronological descending
            },
            -- The current / initially selected trail mark stack sort mode. Choose from one of the
            -- available modes: alpha_asc, alpha_dsc, chron_asc, chron_dsc
            current_trail_mark_stack_sort_mode = "chron_asc",
        },
        quickfix_mappings = {     -- rename this to "force_quickfix_mappings" to completely override default mappings and not merge with them
            nv = {
                motions = {
                    qf_motion_move_trail_mark_stack_cursor = "<CR>",
                },
                actions = {
                    qf_action_delete_trail_mark_selection = "d",
                    qf_action_save_visual_selection_start_line = "v",
                },
                alt_actions = {
                    qf_action_save_visual_selection_start_line = "V",
                }
            },
            v = {
                actions = {
                    qf_action_move_selected_trail_marks_down = "<C-j>",
                    qf_action_move_selected_trail_marks_up = "<C-k>",
                }
            }
        },
    },
}
