(use-package prettier-js
  )

(use-package typescript-mode
  :mode "\\.tsx+\\'"
  :hook (typescript-mode . lsp-deferred)
  (typescript-mode . smartparens-mode)
  :bind (:map typescript-mode-map ("C-c C-f" . prettier-js))
  )


