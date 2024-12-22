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
  :config ;; tweak evil after loading it
  (evil-mode)

  ;; example how to map a command in normal mode (called 'normal state' in evil)
  ;; (define-key evil-normal-state-map (kbd ", w") 'evil-window-vsplit)
  )


(use-package evil-collection
  :after evil
  :ensure t
  :config
  (evil-collection-init)
  (+layout-bepo-rotate-ts-bare-keymap '(read-expression-map))
  (+layout-bepo-rotate-bare-keymap '(evil-window-map) +layout-bepo-cr-rotation-style)
  (+layout-bepo-rotate-evil-keymap +layout-bepo-cr-rotation-style)
  )

(use-package which-key
  :init (which-key-mode)
  :diminish which-key-mode
  :config (setq which-key-idle-delay 1)
  (setq which-key-popup-type 'side-window)
  (setq which-key-side-window-max-height 0.2))

