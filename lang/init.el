(use-package lsp-mode
  :commands (lsp lsp-deferred)
  :hook (lsp-mode . (lambda ()
		      (setq lsp-headerline-breadcrumb-segments '(path-up-to-project file symbols))
		      (lsp-headerline-breadcrumb-mode)
		      (treemacs-project-follow-mode)
		      ))
  :init
  (setq lsp-keymap-prefix "M-m m")
  (setq gc-cons-percentage 10)
  (setq gc-cons-threshold 100000000)
  (setq read-process-output-max (* 1024 1024)) ;; 1mb
  (setq lsp-idle-delay 1)
  (smartparens-mode)
  :bind
  ("C-x C-<return>" . lsp-find-definition)
  ;; ("C-x C-<return>" . lsp-goto-implementation)
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
(load  (concat (file-name-directory load-file-name) "yaml.el"))
(load  (concat (file-name-directory load-file-name) "fsharp.el"))
(load  (concat (file-name-directory load-file-name) "c.el"))
(load  (concat (file-name-directory load-file-name) "csharp.el"))
(load  (concat (file-name-directory load-file-name) "haskell.el"))
