(use-package terraform-mode
  :custom (terraform-indent-level 4)

  :bind (:map terraform-mode-map ("C-c C-f" . lsp-format-buffer))
  )

(use-package lsp-mode
  :ensure t
  :hook ((terraform-mode . lsp-deferred)))
