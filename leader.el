;; Files
(define-key evil-normal-state-map (kbd "SPC f") '("Files 🔍" . (keymap)))
(define-key evil-normal-state-map (kbd "SPC f f") 'find-file)
(define-key magit-mode-map (kbd "SPC f f") 'find-file)

;; Project
(define-key evil-normal-state-map (kbd "SPC p f") 'project-find-file)
(define-key evil-normal-state-map (kbd "SPC p d") 'project-find-dir)
(define-key evil-normal-state-map (kbd "SPC p D") 'project-dired)
(define-key evil-normal-state-map (kbd "SPC p e") 'flymake-show-project-diagnostics)
(define-key evil-normal-state-map (kbd "SPC p t") 'find-test-file)
(define-key evil-normal-state-map (kbd "SPC p T") 'find-test-file-other-window)
(define-key evil-normal-state-map (kbd "SPC p x") 'project-execute-extended-command)
(define-key evil-normal-state-map (kbd "SPC p !") 'project-shell-command)
(define-key evil-normal-state-map (kbd "SPC p s") '("Search/Replace 🔍" . (keymap)))
(define-key evil-normal-state-map (kbd "SPC p s g") 'project-find-regexp)
(define-key evil-normal-state-map (kbd "SPC p s r") 'project-query-replace-regexp)
(define-key evil-normal-state-map (kbd "SPC p b") '("Project buffers 🪟" . (keymap)))
(define-key evil-normal-state-map (kbd "SPC p b b") 'project-switch-to-buffer)
(define-key evil-normal-state-map (kbd "SPC p b k") 'project-kill-buffers)
(define-key evil-normal-state-map (kbd "SPC p b C-b") 'project-list-buffers)

;; VCS
(define-key evil-normal-state-map (kbd "SPC g") '("VCS/Tree 📐" . (keymap)))
(define-key evil-normal-state-map (kbd "SPC g s") 'magit-status)
(define-key evil-normal-state-map (kbd "SPC g t") 'treemacs)
(define-key evil-normal-state-map (kbd "SPC g a") 'vc-annotate)

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
(define-key evil-normal-state-map (kbd "SPC m g g") 'xref-find-definitions)
(define-key evil-normal-state-map (kbd "SPC m g G") 'xref-find-definitions-other-window)
(define-key evil-normal-state-map (kbd "SPC m g r") 'xref-find-references)

;; Toggles
(define-key evil-normal-state-map (kbd "SPC t") '("Toggles 🎛️️" . (keymap)))
(define-key evil-normal-state-map (kbd "SPC t c") 'global-subword-mode)
(define-key evil-normal-state-map (kbd "SPC t f") 'flyspell-mode)
(define-key evil-normal-state-map (kbd "SPC t w") 'toggle-trailing-whitespace)
(define-key evil-normal-state-map (kbd "SPC t s") '("Text Size 🅰" . (keymap)))
(define-key evil-normal-state-map (kbd "SPC t s t") 'text-scale-decrease)
(define-key evil-normal-state-map (kbd "SPC t s s") 'text-scale-increase)

;; Text/Spelling
(define-key evil-normal-state-map (kbd "SPC s") '("Text/Spelling 📚" . (keymap)))
(define-key evil-normal-state-map (kbd "SPC s s") 'save-buffer)
(define-key evil-normal-state-map (kbd "SPC s S") 'save-some-buffers)
(define-key evil-normal-state-map (kbd "SPC s c") 'flyspell-correct-word-before-point)
(define-key evil-visual-state-map (kbd "SPC s ,") 'comment-dwim)
(define-key evil-normal-state-map (kbd "SPC s ,") 'comment-line)

;; Interaction
(define-key evil-normal-state-map (kbd "SPC i") '("Interaction 🕹️" . (keymap)))
(define-key evil-normal-state-map (kbd "SPC i i") 'yas-insert-snippet)
(define-key evil-normal-state-map (kbd "SPC i u") 'insert-char)

;; Buffers
(define-key evil-normal-state-map (kbd "SPC b") '("Buffers 🪟" . (keymap)))
(define-key evil-normal-state-map (kbd "SPC b b") 'switch-to-buffer)
(define-key evil-normal-state-map (kbd "SPC b B") 'switch-to-buffer-other-window)
(define-key evil-normal-state-map (kbd "SPC b l") 'kill-current-buffer)

;; Help
(define-key evil-normal-state-map (kbd "SPC h") '("Help ❓" . (keymap)))
(define-key evil-normal-state-map (kbd "SPC h t") 'describe-text-properties)
(define-key evil-normal-state-map (kbd "SPC h v") 'describe-variable)
(define-key evil-normal-state-map (kbd "SPC h f") 'describe-function)
(define-key evil-normal-state-map (kbd "SPC h m") 'describe-mode)
(define-key evil-normal-state-map (kbd "SPC h k") 'describe-key)
(define-key evil-normal-state-map (kbd "SPC h K") 'describe-keymap)

;; Apps
(define-key evil-normal-state-map (kbd "SPC a") '("Apps 📱" . (keymap)))
(define-key evil-normal-state-map (kbd "SPC a t") 'vterm)
(define-key evil-normal-state-map (kbd "SPC a c") 'start-claude-vterm)
(define-key evil-normal-state-map (kbd "SPC a C") 'start-claude-vterm-other-window)
(define-key evil-normal-state-map (kbd "SPC a a") 'start-aider-vterm)
(define-key evil-normal-state-map (kbd "SPC a A") 'start-aider-vterm-other-window)
(define-key evil-normal-state-map (kbd "SPC a d") 'dictionary-search)

;; Quit
(define-key evil-normal-state-map (kbd "SPC q") '("Quit 🚪" . (keymap)))
(define-key evil-normal-state-map (kbd "SPC q q") 'save-buffers-kill-terminal)

;; copy all keys in evil's "SPC" prefix to magit's "SPC"
(define-key magit-mode-map (kbd "SPC") (lookup-key evil-normal-state-map (kbd "SPC")))
(define-key magit-log-mode-map (kbd "SPC") (lookup-key evil-normal-state-map (kbd "SPC")))
(define-key magit-process-mode-map (kbd "SPC") (lookup-key evil-normal-state-map (kbd "SPC")))
