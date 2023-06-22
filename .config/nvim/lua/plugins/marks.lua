return {
    "chentoast/marks.nvim",
    event = "BufEnter",
    opts = {
        -- which builtin marks to show. default {}
        builtin_marks = { ".", "'", "\"", "^" },
        sign_priority = { lower = 10, upper = 15, builtin = 8, bookmark = 20 },
    }
}
