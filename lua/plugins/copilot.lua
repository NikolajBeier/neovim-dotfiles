return {
  {
    "github/copilot.vim"
  },
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "nvim-lua/plenary.nvim", branch = "master" },
    },
    build = "make tiktoken",
    opts = {
      model = "claude-sonnet-4",
      window = {
        layout = 'vertical',
        width = 0.3
      },

      headers = {
        user = '👤 You',
        assistant = '🤖 Copilot',
        tool = '🔧 Tool',
      },

      auto_insert_mode = true,     -- Enter insert mode when opening
    },
  }
}
