;; flycheck fringe symbol
;; (define-fringe-bitmap 'flycheck-fringe-bitmap-ball
;;     (vector #b00000000
;;             #b00000000
;;             #b00000000
;;             #b00000000
;;             #b00000000
;;             #b00111000
;;             #b01111100
;;             #b11111110
;;             #b11111110
;;             #b01111100
;;             #b00111000
;;             #b00000000
;;             #b00000000
;;             #b00000000
;;             #b00000000
;;             #b00000000
;;             #b00000000))

;; (flycheck-define-error-level 'error
;;   :severity 100
;;   :compilation-level 2
;;   :overlay-category 'flycheck-error-overlay
;;   :fringe-bitmap 'flycheck-fringe-bitmap-ball
;;   :fringe-face 'flycheck-fringe-error
;;   :error-list-face 'flycheck-error-list-error)



(setq flymake-fringe-indicator-position 'left-fringe)
(setq flymake-suppress-zero-counters t)
(setq flymake-start-on-flymake-mode t)
(setq flymake-no-changes-timeout nil)
(setq flymake-start-on-save-buffer t)
(setq flymake-proc-compilation-prevents-syntax-check t)
(setq flymake-wrap-around nil)


;; Company-mode
(use-package company
  :after lsp-mode
  :hook (prog-mode . company-mode)
  :bind
  (:map company-active-map
  	;; ("<tab>" . company-complete-selection)
	("C-n" . company-select-next)
	("C-p" . company-select-previous)
	)
  ;; (:map lsp-mode-map
  ;; 	("<tab>" . company-indent-or-complete-common))
  :custom
  (company-minimum-prefix-length 1)
  (company-idle-delay 0.0)
  )

;; Treemacs
(use-package treemacs
  :after lsp)
