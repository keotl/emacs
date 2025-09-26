(use-package vterm
  :ensure t
  :bind (:map vterm-mode-map
              ("M-q" . vterm-send-next-key)
              ("M-v" . vterm-yank)
              )
  :config
  (with-eval-after-load 'evil
    (evil-set-initial-state 'vterm-mode 'insert)
    (evil-define-key 'insert vterm-mode-map
      (kbd "C-e") 'vterm--self-insert
      (kbd "C-w") 'vterm--self-insert
      (kbd "C-r") 'vterm--self-insert
      (kbd "C-a") 'vterm--self-insert
      (kbd "C-k") 'vterm--self-insert
      (kbd "C-p") 'vterm--self-insert
      (kbd "C-n") 'vterm--self-insert
      (kbd "C-d") 'vterm--self-insert
      ))
  (when (eq system-type 'darwin)
    (setq vterm-shell "fish")
    )

  :init
  (add-hook 'vterm-mode-hook
            (lambda () (setq-local show-trailing-whitespace nil)))
  )

;; (use-package aidermacs
;;   :ensure t
;;   :bind(("C-c a" . aidermacs-transient-menu))
;;   ;; :config
;;   ;;(setenv "ANTHROPIC_API_KEY" "sk-...")
;;   :custom
;;   (aidermacs-default-chat-mode 'architect)
;;   (aidermacs-default-model "sonnet")
;;  )
