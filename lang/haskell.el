(use-package haskell-mode
  :hook ((haskell-mode . lsp-deferred)
	 (haskell-mode . smartparens-mode)
	 )
    :bind (:map haskell-mode-map ("C-c C-f" . lsp-format-buffer))
  )
(use-package lsp-haskell
  :config
  ;; (setf lsp-haskell-server-path "/home/atreides/.ghcup/bin/haskell-language-server-8.8.4")
  )
