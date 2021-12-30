vim.cmd [[packadd packer.nvim]]

return require('packer').startup(
function()

    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Vim Airline
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'

    -- Add navegation in files
    use 'preservim/nerdtree'

    -- theme
    use 'matsuuu/pinkmare'

    use 'tpope/vim-surround'

    use 'ap/vim-css-color'

    use 'preservim/tagbar'

    use 'mg979/vim-visual-multi'

--    use {
--      'neoclide/coc.nvim',
--      branch = 'release'
--    }

    use 'jiangmiao/auto-pairs'

    use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
    }

    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'saadparwaiz1/cmp_luasnip'
    use 'L3MON4D3/LuaSnip'
    use 'rafamadriz/friendly-snippets'
    use 'ray-x/lsp_signature.nvim'
    use {
      'tzachar/cmp-tabnine',
      run='./install.sh',
      requires = 'hrsh7th/nvim-cmp'
    }
    use 'onsails/lspkind-nvim'

end
)

