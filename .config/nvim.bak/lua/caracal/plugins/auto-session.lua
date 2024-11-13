return {
    "rmagatti/auto-session",
    config = function ()
      local auto_session  = require("auto-session")
      auto_session.setup({
          auto_restore_enabled = false,
          auto_session_suppress_dirs = { "~/", "~/Dev/", "~/Downloads/", "~/Documents/", "~/Desktop/"},
      })

      local keymap = vim.keymap

      keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", {desc = "Saves the current session"})
      keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", {desc = "Restores the previous session"})
    end,
}
