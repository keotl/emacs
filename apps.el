(use-package vterm
  :ensure t
  :bind (:map vterm-mode-map
              ("M-q" . vterm-send-next-key)
              ("M-v" . vterm-yank)
              )
  :config
  (with-eval-after-load 'evil
    (evil-set-initial-state 'vterm-mode 'insert))
  (when (eq system-type 'darwin)
    (setq vterm-shell "fish")
    )

  :init
  (add-hook 'vterm-mode-hook
            (lambda () (setq-local show-trailing-whitespace nil)))
  )

(use-package aidermacs
  :ensure t
  :bind(("C-c a" . aidermacs-transient-menu))
  ;; :config
  ;;(setenv "ANTHROPIC_API_KEY" "sk-...")
  :custom
  (aidermacs-default-chat-mode 'architect)
  (aidermacs-default-model "sonnet")
 )
