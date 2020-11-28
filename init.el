(load  (concat (file-name-directory load-file-name) "bootstrap.el"))

(set-face-attribute 'default nil :font "Fira Code" :height 110)

(load  (concat (file-name-directory load-file-name) "themes/savoy-truffle-theme.el"))
;; (load-theme ')

;; Modeline
(use-package all-the-icons)
(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1))


;; Ivy
(use-package ivy
  :config (ivy-mode 1))
(use-package counsel
  :bind (("M-x" . counsel-M-x)
	 ("C-x b" . counsel-ibuffer)
	 ("C-x C-f" . counsel-find-file)
	 ("C-h f" . counsel-describe-function)
	 ("C-h v" . counsel-describe-variable)
	 ("C-M-j" . counsel-switch-buffer)
	 :map minibuffer-local-map
	 ("C-r" . counsel-minibuffer-history)))

;; Editor config
(column-number-mode)
(global-display-line-numbers-mode t)
;; Disable line numbers for some modes
(dolist (mode '(org-mode-hook
		term-mode-hook
		eshell-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 0))))

(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

;; Keymap help
(use-package which-key
  :init (which-key-mode)
  :diminish which-key-mode
  :config (setq which-key-idle-delay 1)
  (setq which-key-popup-type 'side-window)
  (setq which-key-side-window-max-height 0.2))

(use-package ivy-rich
  :init (ivy-rich-mode 1))

(use-package helpful
  :ensure t
  :custom
  (counsel-describe-function-function #'helpful-callable)
  (counsel-describe-variable-function #'helpful-variable)
  :bind
  ([remap describe-command] . helpful-command)
  ([remap describe-key] . helpful-key))

;; Keymap
(load  (concat (file-name-directory load-file-name) "keymap.el"))

;; Other tools
(load  (concat (file-name-directory load-file-name) "vcs.el"))


