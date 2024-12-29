;; Files
(define-key evil-normal-state-map (kbd "SPC f") '("Files 🔍" . (keymap)))
(define-key evil-normal-state-map (kbd "SPC f f") 'find-file)

;; Project
(define-key evil-normal-state-map (kbd "SPC p") '("Project 📋" . (keymap)))
(define-key evil-normal-state-map (kbd "SPC p f") 'project-find-file)
(define-key evil-normal-state-map (kbd "SPC p d") 'project-find-dir)
