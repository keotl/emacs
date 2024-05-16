(use-package rust-mode
  :hook ((rust-mode . lsp-deferred)
	 (rust-mode . smartparens-mode)
	 )
    :bind (:map rust-mode-map ("C-c C-f" . lsp-format-buffer))
  )
