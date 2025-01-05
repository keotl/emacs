(load  (concat (file-name-directory load-file-name) "vendor/doom-bepo-autoload.el"))
(setq +layout-bepo-cr-rotation-style 'ergodis)

(use-package evil
  :ensure t ;; install the evil package if not installed
  :init ;; tweak evil's configuration before loading it
  ;; (setq evil-search-module 'evil-search)
  ;; (setq evil-ex-complete-emacs-commands nil)
  ;; (setq evil-vsplit-window-right t)
  ;; (setq evil-split-window-below t)
  ;; (setq evil-shift-round nil)
  ;; (setq evil-want-C-u-scroll t)
    (setq evil-want-integration t) ;; This is optional since it's already set to t by default.
    (setq evil-want-keybinding nil)
    (setq evil-want-minibuffer t)
  :config ;; tweak evil after loading it
  (evil-mode)

  (define-key evil-normal-state-map (kbd "g à") 'flymake-goto-next-error)

  ;;   :bind
  ;; (:map evil-normal-state-map
  ;; 	("gà" . flymake-goto-next-error)
  ;; 	)
  )



(use-package evil-collection
  :after evil
  :ensure t
  :custom (evil-collection-setup-minibuffer t)
  :config
  (evil-collection-init '(calendar dired calc ediff ivy xref))
  (+layout-bepo-rotate-ts-bare-keymap '(read-expression-map))
  (+layout-bepo-rotate-bare-keymap '(evil-window-map) +layout-bepo-cr-rotation-style)
  (+layout-bepo-rotate-evil-keymap +layout-bepo-cr-rotation-style)

  ;; dired
  (with-eval-after-load 'dired
    (+layout-bepo-rotate-keymaps '(dired-mode-map))
    )

  ;; ivy
  (with-eval-after-load 'ivy
    (evil-collection-translate-key nil '(ivy-minibuffer-map) (kbd "<normal-state> t") (kbd "<normal-state> j"))
    (evil-collection-translate-key nil '(ivy-minibuffer-map) (kbd "<normal-state> s") (kbd "<normal-state> k"))
    (evil-collection-translate-key nil '(ivy-minibuffer-map) (kbd "<normal-state> j") (kbd "<normal-state> t"))
    (evil-collection-translate-key nil '(ivy-minibuffer-map) (kbd "<normal-state> k") (kbd "<normal-state> s"))
  )
  )

(use-package which-key
  :init (which-key-mode)
  :diminish which-key-mode
  :config (setq which-key-idle-delay 1)
  (setq which-key-popup-type 'side-window)
  (setq which-key-side-window-max-height 0.2))

;; (use-package helm
;; :config
;; )

(use-package ivy
  :init (setq ivy-initial-inputs-alist nil)
  :config (ivy-mode 1))

;; dired
(setq dired-listing-switches "-alh --group-directories-first")

;; key-chord
(load  (concat (file-name-directory load-file-name) "vendor/key-chord.el"))
(key-chord-mode 1)
(key-chord-define evil-normal-state-map ",," 'evil-force-normal-state)
(key-chord-define evil-visual-state-map ",," 'evil-change-to-previous-state)
(key-chord-define evil-insert-state-map ",," 'evil-normal-state)
(key-chord-define evil-replace-state-map ",," 'evil-normal-state)

;; company
(use-package company
  :ensure t
  :after eglot
  :hook (prog-mode . company-mode)
  :bind
  (:map company-mode-map
	("C-." . company-complete)
	)
  :custom
  (company-minimum-prefix-length 1)
  (company-idle-delay 0.2)
  ;; (company-dabbrev-downcase 0)
  )

;; flymake

