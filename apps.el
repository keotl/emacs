(use-package vterm
  :ensure t
  :bind (:map vterm-mode-map ("M-q" . vterm-send-next-key))
  :config
  (with-eval-after-load 'evil
    (evil-set-initial-state 'vterm-mode 'insert))
  :init
  (add-hook 'vterm-mode-hook
            (lambda () (setq-local show-trailing-whitespace nil)))
  )
