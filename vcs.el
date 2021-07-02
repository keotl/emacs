(use-package magit)
(keotl/leader-keys
  "g" '(:ignore t :which-key "vcs")
  "gs" 'magit-status
  "p" '(:ignore t :which-key "projectile")
  )

(use-package projectile
  :diminish projectile-mode
  :config (projectile-mode)
  :bind (("M-m m g T" . projectile-find-implementation-or-test-other-window)
	 ("M-m m g t" . projectile-toggle-between-implementation-and-test)
	 )
  :bind-keymap ("M-m p" . projectile-command-map)
  :init
  (setq projectile-switch-project-action #'projectile-dired)
  (setq projectile-create-missing-test-files t)
  )

