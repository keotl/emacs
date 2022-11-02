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
(setq warning-minimum-level :error)

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
  :bind (("M-m g t" . treemacs-select-window)
	 ("M-m g T" . treemacs)
	 )
  )


;; ace-window
(use-package ace-window
  :init (setq aw-keys '(?a ?u ?i ?e ?, ?c ?t ?s ?r))
  :bind
  (("C-x o" . ace-window)))

(defun toggle-window-split ()
  (interactive)
  (if (= (count-windows) 2)
      (let* ((this-win-buffer (window-buffer))
	     (next-win-buffer (window-buffer (next-window)))
	     (this-win-edges (window-edges (selected-window)))
	     (next-win-edges (window-edges (next-window)))
	     (this-win-2nd (not (and (<= (car this-win-edges)
					 (car next-win-edges))
				     (<= (cadr this-win-edges)
					 (cadr next-win-edges)))))
	     (splitter
	      (if (= (car this-win-edges)
		     (car (window-edges (next-window))))
		  'split-window-horizontally
		'split-window-vertically)))
	(delete-other-windows)
	(let ((first-win (selected-window)))
	  (funcall splitter)
	  (if this-win-2nd (other-window 1))
	  (set-window-buffer (selected-window) this-win-buffer)
	  (set-window-buffer (next-window) next-win-buffer)
	  (select-window first-win)
	  (if this-win-2nd (other-window 1))))))


;; Default split behaviour: vertical line
;; (setq split-width-threshold nil)
;; Default split behaviour: horizontal line
;; (setq split-width-threshold 1)

;; Desktop session restore
(setq desktop-path '("."))
(if (file-exists-p ".emacs.desktop")
    (desktop-save-mode 1))
