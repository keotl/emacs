(use-package clojure-mode
  :hook (clojure-mode . lsp-deferred)
  :hook (clojure-mode . smartparens-mode)
  ;; :config (lsp-lens-mode)
  ;; :bind (:map fsharp-mode-map ("M-m m p a" . fsharp-add-this-file-to-proj))
  ;; :bind (:map fsharp-mode-map ("M-m m p r" . fsharp-remove-this-file-from-proj))
  :config (bind-key* "C-c C-f" 'lsp-format-buffer) ;; late-bind override
  )
