-- https://github.com/wbthomason/packer.nvim

local packer = require("packer")
packer.startup(
	{
 		function()
 	        -- 包管理器
 	        use {
 	            "wbthomason/packer.nvim"
 	        }
 	
 	        -- nvim-tree
 	        use {
 	            "kyazdani42/nvim-tree.lua",
 	            requires = {
 	                -- 依赖一个图标插件
 	                "kyazdani42/nvim-web-devicons"
 	            },
 	            config = function()
 	                -- 插件加载完成后自动运行 lua/conf/nvim-tree.lua 文件中的代码
 	                require("conf.nvim-tree")
 	            end
 	        }
 	        -- 炫酷的状态栏插件
 	        use {
 	            "windwp/windline.nvim",
 	            config = function()
 	                -- 插件加载完成后自动运行 lua/conf/windline.lua 文件中的代码
 	                require("conf.windline")
 	            end
 	        }
 	
 	        use {
 	            "Mofiqul/dracula.nvim",
 	            config = function ()
 	                require("conf.dracula")
 	            end
 	        }

            -- use { 
            --     "catppuccin/nvim",
            --     config = function()
            --         require("conf.catppuccin")
            --     end
            -- }
 	
 	        -- 为了能让状态栏显示 git 信息，所以这个插件是必须的
 	        use {
 	            "lewis6991/gitsigns.nvim",
 	            requires = {
 	                -- 依赖于该插件（一款 Lua 开发使用的插件）
 	                "nvim-lua/plenary.nvim"
 	            },
 	            config = function()
 	                require("gitsigns").setup()
 	            end
 	        }
 	
 	        -- 支持 LSP 状态的 buffer 栏
 	        use {
 	            "akinsho/bufferline.nvim",
 	            requires = {
 	                "famiu/bufdelete.nvim" -- 删除 buffer 时不影响现有布局
 	            },
 	            config = function()
 	                require("conf.bufferline")
 	            end
 	        }
 	
 	        -- 搜索时显示条目
 	        use {
 	            "kevinhwang91/nvim-hlslens",
 	            config = function()
 	                require("conf.nvim-hlslens")
 	            end
 	        }
 	
 	        -- 显示缩进线
 	        use {
 	            "lukas-reineke/indent-blankline.nvim",
 	            config = function()
 	                require("conf.indent-blankline")
 	            end
 	        }
 	
 	        -- 自动匹配括号
 	        use {
 	            "windwp/nvim-autopairs",
 	            config = function()
 	                require("conf.nvim-autopairs")
 	            end
 	        }
 	
 	        -- 快速更改单词
 	        use {
 	            "AndrewRadev/switch.vim",
 	            config = function()
 	                require("conf.switch")
 	            end
 	        }
 	
 	        -- 快速跳转
 	        use {
 	            "phaazon/hop.nvim",
 	            config = function()
 	                require("conf.hop")
 	            end
 	        }
 	
 	        -- 包裹修改
 	        use {
 	            "ur4ltz/surround.nvim",
 	            config = function()
 	                require("conf.surround")
 	            end
 	        }
 	
 	        -- 显示光标下相同词汇
 	        use {
 	            "RRethy/vim-illuminate",
 	            config = function()
 	                require("conf.vim-illuminate")
 	            end
 	        }
 	
 	        -- 自动保存
 	        -- use {
 	        --     "Pocco81/AutoSave.nvim",
        		-- after = "go.nvim",
 	        --     config = function()
 	        --         require("conf.AutoSave")
 	        --     end
 	        -- }
 	
 	        -- 自动恢复光标位置
 	        use {
 	            "ethanholz/nvim-lastplace",
 	            config = function()
 	                require("conf.nvim-lastplace")
 	            end
 	        }
 	
 	        -- 自动会话管理
 	        -- use {
 	        --     "rmagatti/auto-session",
 	        --     config = function()
 	        --         require("conf.auto-session")
 	        --     end
 	        -- }
 	
 	        -- 全局替换
 	        use {
 	            "nvim-pack/nvim-spectre",
 	            requires = {
 	                "nvim-lua/plenary.nvim", -- Lua 开发模块
 	                "BurntSushi/ripgrep" -- 文字查找
 	            },
 	            config = function()
 	                require("conf.nvim-spectre")
 	            end
 	        }
 	
 	        -- 显示滚动条
 	        -- use {
 	        --     "petertriho/nvim-scrollbar",
 	        --     config = function()
 	        --         require("conf.nvim-scrollbar")
 	        --     end
 	        -- }
 	
 	        -- 显示网页色
 	        -- use {
 	        --     "norcalli/nvim-colorizer.lua",
 	        --     config = function()
 	        --         require("conf.nvim-colorizer")
 	        --     end
 	        -- }
 	
 	        -- 内置终端
 	        use {
 	            "akinsho/toggleterm.nvim",
 	            config = function()
 	                require("conf.toggleterm")
 	            end
 	        }
 	
 	        -- 键位绑定器
 	        use {
 	            "folke/which-key.nvim",
 	            config = function()
 	                require("conf.which-key")
 	            end
 	        }
 	
 	        -- 模糊查找
 	        use {
 	            "nvim-telescope/telescope.nvim",
 	            requires = {
 	                "nvim-lua/plenary.nvim", -- Lua 开发模块
 	                "BurntSushi/ripgrep", -- 文字查找
 	                "sharkdp/fd" -- 文件查找
 	            },
 	            config = function()
 	                require("conf.telescope")
 	            end
 	        }
 	
 	        -- 精美弹窗
 	        use {
 	            "rcarriga/nvim-notify",
 	            config = function()
 	                require("conf.nvim-notify")
 	            end
 	        }
 	
 	        -- todo tree
 	        use {
 	            "folke/todo-comments.nvim",
 	            config = function()
 	                require("conf.todo-comments")
 	            end
 	        }
 	
 	        -- LSP 基础服务
 	        use {
 	            "neovim/nvim-lspconfig",
 	            config = function()
 	                require("conf.nvim-lspconfig")
 	            end
 	        }
 	
 	        -- 自动安装 LSP
 	        use {
 	            "williamboman/nvim-lsp-installer",
 	            config = function()
 	                require("conf.nvim-lsp-installer")
 	            end
 	        }
 	
 	        -- 插入模式获得函数签名
 	        use {
 	            "ray-x/lsp_signature.nvim",
 	            config = function()
 	                require("conf.lsp_signature")
 	            end
 	        }
 	
 	        -- LSP UI 美化
 	        use {
 	            "tami5/lspsaga.nvim",
 	            config = function()
 	                require("conf.lspsaga")
 	            end
 	        }
 	
 	        -- LSP 进度提示
 	        use {
 	            "j-hui/fidget.nvim",
 	            config = function()
 	                require("conf.fidget")
 	            end
 	        }
 	
 	        -- 灯泡提示代码行为
 	        -- use {
 	        --     "kosayoda/nvim-lightbulb",
 	        --     config = function()
 	        --        require("conf.nvim-lightbulb")
 	        --     end
 	        -- }
 	
 	        -- 自动代码补全系列插件
 	        use {
 	            "hrsh7th/nvim-cmp",  -- 代码补全核心插件，下面都是增强补全的体验插件
 	            requires = {
 	                {"onsails/lspkind-nvim"}, -- 为补全添加类似 vscode 的图标
 	                {"hrsh7th/vim-vsnip"}, -- vsnip 引擎，用于获得代码片段支持
 	                {"hrsh7th/cmp-vsnip"}, -- 适用于 vsnip 的代码片段源
 	                {"hrsh7th/cmp-nvim-lsp"}, -- 替换内置 omnifunc，获得更多补全
 	                {"hrsh7th/cmp-path"}, -- 路径补全
 	                {"hrsh7th/cmp-buffer"}, -- 缓冲区补全
 	                {"hrsh7th/cmp-cmdline"}, -- 命令补全
 	                {"f3fora/cmp-spell"}, -- 拼写建议
 	                {"rafamadriz/friendly-snippets"}, -- 提供多种语言的代码片段
 	                {"lukas-reineke/cmp-under-comparator"}, -- 让补全结果的排序更加智能
 	                {"tzachar/cmp-tabnine", run = "./install.sh"} -- tabnine 源,提供基于 AI 的智能补全
 	            },
 	            config = function()
 	                require("conf.nvim-cmp")
 	            end
 	        }
 	
 	        -- git copilot 自动补全
 	        use {
 	            "github/copilot.vim",
 	            config = function()
 	                require("conf.copilot")
 	            end
 	        }
 	
 	        -- 扩展 LSP 诊断
 	        use {
 	            "mfussenegger/nvim-lint",
 	            config = function()
 	                require("conf.nvim-lint")
 	            end
 	        }
 	
 	        -- 语法高亮
 	        -- use {
 	        --     "nvim-treesitter/nvim-treesitter",
 	        --     run = {":TSupdate"},
 	        --     -- requires = {
 	        --     --     "p00f/nvim-ts-rainbow" -- 彩虹括号
 	        --     -- },
 	        --     config = function()
 	        --         require("conf.nvim-treesitter")
 	        --     end
 	        -- }
 	
 	        -- 代码注释
 	        use {
 	            "numToStr/Comment.nvim",
 	            requires = {
 	                "JoosepAlviste/nvim-ts-context-commentstring"
 	            },
 	            config = function()
 	                require("conf.Comment")
 	            end
 	        }
 	
 	        -- view tree
 	        use {
 	            "liuchengxu/vista.vim",
 	            config = function()
 	                require("conf.vista")
 	            end
 	        }
 	
 	        -- 代码调试基础插件
 	        use {
 	            "mfussenegger/nvim-dap",
 	            config = function()
 	                require("conf.nvim-dap")
 	            end
 	        }
 	
 	        -- 为代码调试提供内联文本
 	        use {
 	            "theHamsta/nvim-dap-virtual-text",
 	            requires = {
 	                "mfussenegger/nvim-dap"
 	            },
 	            config = function()
 	                require("conf.nvim-dap-virtual-text")
 	            end
 	        }
 	
 	        -- 为代码调试提供 UI 界面
 	        use {
 	            "rcarriga/nvim-dap-ui",
 	            requires = {
 	                "mfussenegger/nvim-dap"
 	            },
 	            config = function()
 	                require("conf.nvim-dap-ui")
 	            end
 	        }
 	
 	        use {
 	            "ray-x/go.nvim",
 	            config = function() 
 	                require("conf.go")
 	            end
 	        }
 	
 		    use {
 			"karb94/neoscroll.nvim",
 			config = function()
 			    require("conf.neoscroll")
 			end
 		    }
 	
 		    use {
 			"abecodes/tabout.nvim",
 			config = function()
 			    require("conf.tabout")
 			end
 		    }
 	
 		 --    use {
 			-- "SmiteshP/nvim-gps",
 			-- config = function()
 	 	--  	    require("conf.nvim-gps")
 			-- end
 		 --    }
 		    
 		    use {
 			"brglng/vim-im-select"
 		    }
 		end
 	
	}
)

-- 实时生效配置
vim.cmd(
    [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]]
)
