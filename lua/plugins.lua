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

    use {
      'neoclide/coc.nvim',
      branch = 'release'
    }

    use 'jiangmiao/auto-pairs'

    use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
    }

end
)

