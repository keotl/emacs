(use-package yasnippet
  :config (setq yas-snippet-dirs '("~/.emacs.d/snippets"))
  :bind ("M-m i i" . yas-expand)
  )

(yas-global-mode)

(use-package smartparens)
(add-to-list 'prog-mode-hook (smartparens-mode))
(add-to-list 'text-mode-hook (smartparens-mode))

(require 'iso-transl) ;; International dead-keys

(add-hook 'text-mode-hook 'flyspell-mode)
(add-hook 'prog-mode-hook 'flyspell-mode)
(add-hook 'prog-mode-hook 'highlight-indent-guides-mode)
(add-hook 'text-mode-hook 'auto-fill-mode)

(use-package multiple-cursors
  :bind ("M-j" . mc/mark-next-like-this)
  )


(use-package highlight-indent-guides
  :config 
  (setq highlight-indent-guides-method 'bitmap)
  (setq highlight-indent-guides-auto-enabled 'nil)
  )


(keotl/leader-keys
  "t" '(:ignore t :which-key "toggles")
  "tc" 'global-subword-mode
  )
;; (global-subword-mode 'nil)


