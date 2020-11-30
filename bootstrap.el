(package-initialize)

(setq inhibit-startup-message t)

(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(global-hl-line-mode 1)
(set-frame-parameter (selected-frame) 'alpha '(90 90))
(add-to-list 'default-frame-alist '(alpha 90 90))

(setq visible-bell t)

(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ;; ("org" . "https://orgmode.org/elpa/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)

(unless package-archive-contents
 (package-refresh-contents))

;; Initialize use-package
(unless (package-installed-p 'use-package)
   (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

;; Send customize variables to a dummy file
(setq custom-file "/tmp/unused-custom.el")
;; Backup files to new folder
(setq backup-directory-alist `(("." . "~/.cache/emacs/backupfiles")))
