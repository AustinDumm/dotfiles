return {
    "Saecki/crates.nvim",
    event = "BufRead Cargo.toml",
    dependencies = "plenary.nvim",
    opts = {
        src = {
            coq = {
                enabled = true,
                name = "crates.nvim",
            }
        }
    }
}
