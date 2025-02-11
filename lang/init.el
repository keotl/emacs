(use-package eglot
  :bind
  (:map evil-normal-state-map
	("à" . eglot-code-actions))
  :config
  (electric-pair-mode 1)
  (company-mode 1)
  )

(use-package autoinsert
  :init
  ;; Don't want to be prompted before insertion:
  (setq auto-insert-query nil)

  (setq auto-insert-directory (locate-user-emacs-file "templates"))
  ;; (add-hook 'find-file-hook 'auto-insert)
  ;; (auto-insert-mode 1)

  :config
  ;; (define-auto-insert "\\.html?$" "default-html.html")
  )

(setq-default indent-tabs-mode nil)
(load  (concat (file-name-directory load-file-name) "scala.el"))
(load  (concat (file-name-directory load-file-name) "typescript.el"))
(load  (concat (file-name-directory load-file-name) "yaml.el"))
(load  (concat (file-name-directory load-file-name) "python.el"))
;; (load  (concat (file-name-directory load-file-name) "haskell.el"))
