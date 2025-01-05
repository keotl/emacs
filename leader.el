;; Files
(define-key evil-normal-state-map (kbd "SPC f") '("Files 🔍" . (keymap)))
(define-key evil-normal-state-map (kbd "SPC f f") 'find-file)

;; Project
(define-key evil-normal-state-map (kbd "SPC p") '("Project 📋" . (keymap)))
(define-key evil-normal-state-map (kbd "SPC p f") 'project-find-file)
(define-key evil-normal-state-map (kbd "SPC p d") 'project-find-dir)

;; VCS
(define-key evil-normal-state-map (kbd "SPC g") '("VCS/Tree 📐" . (keymap)))
(define-key evil-normal-state-map (kbd "SPC g s") 'magit-status)
(define-key evil-normal-state-map (kbd "SPC g t") 'treemacs)

;; Eglot
(define-key evil-normal-state-map (kbd "SPC m") '("Language ✨" . (keymap)))
(define-key evil-normal-state-map (kbd "SPC m a") '("Actions" . (keymap)))
(define-key evil-normal-state-map (kbd "SPC m a a") 'eglot-code-actions)
(define-key evil-normal-state-map (kbd "SPC m r") '("Refactor" . (keymap)))
(define-key evil-normal-state-map (kbd "SPC m r r") 'eglot-rename)
(define-key evil-normal-state-map (kbd "SPC m r o") 'eglot-code-action-organize-imports)
(define-key evil-normal-state-map (kbd "SPC m r x") 'eglot-code-action-extract)
(define-key evil-normal-state-map (kbd "SPC m r w") 'eglot-code-action-rewrite)
(define-key evil-normal-state-map (kbd "SPC m w") '("Workspace" . (keymap)))
(define-key evil-normal-state-map (kbd "SPC m w r") 'eglot-reconnect)
(define-key evil-normal-state-map (kbd "SPC m w q") 'eglot-shutdown)
(define-key evil-normal-state-map (kbd "SPC m f") 'eglot-format)
(define-key evil-normal-state-map (kbd "SPC m d") 'eldoc)
