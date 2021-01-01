(use-package typescript-mode
  :mode "\\.tsx?\\'"
  :hook (typescript-mode . lsp-deferred))

(use-package prettier-js
  :bind ("C-c C-f" . prettier-js))
