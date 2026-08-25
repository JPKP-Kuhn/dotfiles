return {
    {
        "nosduco/remote-sshfs.nvim",
        dependencies = {
            "nvim-telescope/telescope.nvim",
            "nvim-lua/plenary.nvim",
        },
        lazy = false,
        config = function()
            local remote_sshfs = require "remote-sshfs"

            remote_sshfs.setup {
                connections = {
                    ssh_configs = {
                        vim.fn.expand "$HOME" .. "/.ssh/config",
                        "/etc/ssh/ssh_config",
                    },
                    sshfs_args = {
                        "-o reconnect",
                        "-o ConnectTimeout=5",
                    },
                },
                mounts = {
                    base_dir = vim.fn.expand "$HOME" .. "/.sshfs/",
                    unmount_on_exit = true,
                },
                handlers = {
                    on_connect = {
                        change_dir = true,
                    },
                },
            }

            require("telescope").load_extension "remote-sshfs"
        end,
    },
}
