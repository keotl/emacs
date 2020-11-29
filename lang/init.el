(use-package lsp-mode
  :commands (lsp lsp-deferred)
  :init (setq lsp-keymap-prefix "M-m m")
  :bind
  ("C-x C-<return>" . lsp-goto-implementation)
  ("C-x C-S-<return>" . lsp-goto-declaration)
  :config
  (lsp-enable-which-key-integration t)
  (keotl/leader-keys
    "mgG" 'xref-find-definitions-other-window)
)


(load  (concat (file-name-directory load-file-name) "typescript.el"))
