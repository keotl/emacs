(use-package eglot
  :bind
  (:map evil-normal-state-map
	("à" . eglot-code-actions))
  :config
  (electric-pair-mode 1)
  (company-mode 1)
  )


(load  (concat (file-name-directory load-file-name) "scala.el"))
(load  (concat (file-name-directory load-file-name) "typescript.el"))
