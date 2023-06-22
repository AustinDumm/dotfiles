local events = { "BufEnter" }
return {
    {
        "ms-jpq/coq_nvim",
        event = events,
        branch = "coq",
        build = function()
            vim.cmd("COQdeps")
        end,
        config = function()
            require("coq")
            vim.cmd("COQnow --shut-up")
        end
    },
    {
        "ms-jpq/coq.artifacts",
        event = events,
        branch = "artifacts",
        dependencies = "coq_nvim",
    },
    {
        "ms-jpq/coq.thirdparty",
        event = events,
        branch = "3p",
        dependencies = { "coq_nvim", "coq.artifacts" },
        config = function()
            require("coq_3p") {
                {
                    src = "nvimlua",
                    short_name = "nLUA",
                    conf_only = true
                },
            }
        end
    }
}
