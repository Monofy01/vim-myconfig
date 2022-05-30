local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')
   
    -- Tree files
    Plug 'preservim/nerdtree'
    Plug 'ryanoasis/vim-devicons'
    -- Autopairs for brackets and parentesis    
    Plug 'jiangmiao/auto-pairs'
     
    Plug('neoclide/coc.nvim', { branch = 'release' })

    Plug('nvim-treesitter/nvim-treesitter', { ['do'] = vim.fn[':TSUpdate']}) -- Highlights for any language
    Plug('vim-airline/vim-airline') -- Bottom bar
    -- Themes
    Plug('vim-airline/vim-airline-themes')
    Plug('joshdick/onedark.vim')
    Plug('sonph/onehalf', { rtp = 'vim' })
    Plug('dracula/vim', { as = 'dracula' })
    --Plug('Yggdroot/indentLine')
    Plug('lukas-reineke/indent-blankline.nvim')
    Plug('catppuccin/nvim', { as = 'catppuccin'})
vim.call('plug#end')


-- CONFIG TREESITTER FOR HIGHLIGHTS
require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "lua",
                      "html", 
                      "javascript", 
                      "python", 
                      "c", 
                      "cpp",
                      "regex",
                      "java",
                      "json",
                      "typescript",
                      "yaml"},

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- List of parsers to ignore installing (for "all")
  --ignore_install = { "javascript" },

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled
    -- disable = { "c", "rust" },

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}

-- INDENT WITH COLORS 
--vim.opt.list = true
--vim.opt.listchars:append("space:⋅")
vim.opt.listchars:append("eol:↴")

require("indent_blankline").setup {
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
}

-- CONFIG AIRLINE PLUGIN
vim.g["airline#extensions#tabline#enabled"] = 1
vim.g["coc_global_extensions"] = 'coc-tsserver'


