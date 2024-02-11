-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
--
--
--general
lvim.log.level = "warn"
lvim.format_on_save.enabled = false
lvim.colorscheme="lunar"

lvim.leader = "space"

lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<C-p>"] = ":let @+ = expand('%:p%')<cr>" -- copy current file path to clipboard

lvim.keys.normal_mode["<C-y>"] = ":BufferLineMovePrev<cr>" -- move buffer tab left
lvim.keys.normal_mode["<C-u>"] = ":BufferLineMoveNext<cr>" -- move buffer tab right

lvim.builtin.cmp.enabled = false -- disable suggestions

-- clear traling whitespace on save
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern="*",
  command=":%s/\\s\\+$//e"
})


lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "cpp",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "svelte",
  "css",
  "ruby",
  "rust",
  "go",
  "java",
  "yaml"
}
