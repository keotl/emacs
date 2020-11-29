(use-package magit)
(keotl/leader-keys
  "g" '(:ignore t :which-key "vcs")
  "gs" 'magit-status)

(use-package projectile
  :diminish projectile-mode
  :config (projectile-mode)
  :bind-keymap ("M-m p" . projectile-command-map)
  :init (setq projectile-switch-project-action #'projectile-dired)
  )

