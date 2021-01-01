(use-package yasnippet
  :config (setq yas-snippet-dirs '("~/.emacs.d/snippets"))
  :bind ("M-m i i" . yas-expand)
  )

(yas-global-mode)
