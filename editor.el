;; Interaction
(use-package yasnippet
  :config (setq yas-snippet-dirs '("~/.emacs.d/snippets"))
  :bind ("M-m i i" . yas-expand)
  )

(yas-global-mode)

(use-package smartparens)
(add-to-list 'prog-mode-hook (smartparens-mode))
(add-to-list 'text-mode-hook (smartparens-mode))

(use-package multiple-cursors
  :bind ("M-j" . mc/mark-next-like-this)
  )

;; highlight-indent-guides, has issues with emacs29 on python
;; (use-package highlight-indent-guides
;;   :config 
;;   (setq highlight-indent-guides-method 'bitmap)
;;   (setq highlight-indent-guides-auto-enabled 'nil)
;;   (setq highlight-indent-guides-highlighter-function (lambda (level responsive display)
;;   (if (> 1 level)
;;       nil
;;     (highlight-indent-guides--highlighter-default level responsive display))))
;;   )
;;(add-hook 'prog-mode-hook 'highlight-indent-guides-mode)

;; highlight-indentation, alternative package without the graphical glitches
(load  (concat (file-name-directory load-file-name) "vendor/highlight-indentation.el"))
(custom-set-variables '(highlight-indentation-overlay-string "|"))
(add-to-list 'prog-mode-hook 'highlight-indentation-mode)


(keotl/leader-keys
  "t" '(:ignore t :which-key "toggles")
  "tc" 'global-subword-mode
  "tf" 'flyspell-mode
  "s" '(:ignore t :which-key "spelling")
  "sc" 'flyspell-correct-word-before-point
  )

;; Spelling and localization
(require 'iso-transl) ;; International dead-keys

(setq ispell-program-name "aspell")
(setq ispell-extra-args '("--camel-case" "--sug-mode=ultra" "--run-together-limit=2"))
(eval-after-load "flyspell"
  '(progn
     (define-key flyspell-mode-map (kbd "C-.") nil)
  ))
;; (setq ispell-extra-args '("--camel-case" "--run-together" "--run-together-limit=16" "--sug-mode=ultra"))

(add-hook 'text-mode-hook 'flyspell-mode)
(add-hook 'prog-mode-hook 'flyspell-mode)
(add-hook 'text-mode-hook 'auto-fill-mode)
