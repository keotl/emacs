(use-package csharp-mode
  :ensure t
  :init (setq lsp-csharp-server-path "/home/atreides/bin/OmniSharp") ;; Manually download OmniSharp-roslyn for .net-6
  :hook (csharp-mode . lsp-deferred)
  :hook (csharp-mode . smartparens-mode)
  :bind ("C-c C-f" . lsp-format-buffer)
  )
