(use-package prettier-js
  )

(use-package typescript-mode
  :mode "\\.tsx?\\'"
  :hook (typescript-mode . lsp-deferred)
  :bind (:map typescript-mode-map ("C-c C-f" . prettier-js))
  ;; :init (setq lsp-clients-typescript-tls-path "/Users/atreides/.emacs.d/.cache/lsp/npm/typescript/")
  :init (setq lsp-clients-typescript-tls-path "/usr/local/bin/typescript-language-server")
  )


