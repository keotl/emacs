(use-package yasnippet
  :config (setq yas-snippet-dirs '("~/.emacs.d/snippets"))
  :bind ("M-m i i" . yas-expand)
  )

(yas-global-mode)

(use-package smartparens)
(add-to-list 'prog-mode-hook (smartparens-mode))

(require 'iso-transl) ;; International dead-keys
