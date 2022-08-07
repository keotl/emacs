(use-package csharp-mode
  :ensure t
  :init (setq lsp-csharp-server-path "~/apps/omnisharp/OmniSharp") ;; Manually download OmniSharp-roslyn for .net-6
  :hook (csharp-mode . lsp-deferred)
  :hook (csharp-mode . smartparens-mode)
  :bind (:map csharp-mode-map ("C-c C-f" . lsp-format-buffer))
  )
