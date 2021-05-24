(use-package lsp-mode
  :commands (lsp lsp-deferred)
  :hook (lsp-mode . (lambda () (setq lsp-headerline-breadcrumb-segments '(path-up-to-project file symbols)) (lsp-headerline-breadcrumb-mode)))
  :init
  (setq lsp-keymap-prefix "M-m m")
  (setq gc-cons-percentage 10)
  (setq gc-cons-threshold 800000000)
  :bind
  ("C-x C-<return>" . lsp-goto-implementation)
  ("C-x C-S-<return>" . lsp-goto-declaration)
  ("C-à" . lsp-execute-code-action)
  ("C-c C-à" . flymake-goto-next-error)

  :config
  (lsp-enable-which-key-integration t)
  (keotl/leader-keys
    "mgG" 'xref-find-definitions-other-window)
  (smartparens-mode)
)


(load  (concat (file-name-directory load-file-name) "typescript.el"))
(load  (concat (file-name-directory load-file-name) "python.el"))
(load  (concat (file-name-directory load-file-name) "erlang.el"))
(load  (concat (file-name-directory load-file-name) "markdown.el"))
