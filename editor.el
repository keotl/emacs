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
(add-hook 'text-mode-hook 'auto-fill-mode)

(use-package multiple-cursors
  :bind ("M-j" . mc/mark-next-like-this)
  )


(use-package highlight-indent-guides
  :config (lambda () (
	   (setq highlight-indent-guides-method 'character)
	   (setq highlight-indent-guides-auto-enabled 'nil)
	   (set-face-background 'highlight-indent-guides-odd-face ((,class (:foreground ,"#A9B7C6"))))
	   (set-face-background 'highlight-indent-guides-even-face "dimgray")
	   (set-face-foreground 'highlight-indent-guides-character-face "white")
	   ))
  )
