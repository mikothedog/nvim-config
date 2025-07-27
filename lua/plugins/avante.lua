return {
	{
		"yetone/avante.nvim",
		event = "VeryLazy",
		lazy = false,
		version = false,
		build = "make",
		dependencies = {
			"MunifTanjim/nui.nvim",
		},
		opts = {
			provider = "ollama",
			providers = {
				ollama = {
					endpoint = "http://127.0.0.1:11434",
					model = "qwen2.5-coder:7b",
					extra_request_body = {
						options = {
							num_ctx = 4096, -- Your chosen context length
						},
					},
				},
				auto_suggestions_provider = "ollama",
				debug = false,
			},
		}
	},
}
