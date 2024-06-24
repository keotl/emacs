(load  (concat (file-name-directory load-file-name) "../util/py-yapf.el"))
(load  (concat (file-name-directory load-file-name) "../util/python-isort.el"))


(use-package lsp-pyright
  :ensure t
  :hook (python-mode . (lambda ()
                          (require 'lsp-pyright)
                          (lsp-deferred)
			  (smartparens-mode)
			  (define-key python-mode-map "\C-c\C-f" 'python-reformat)
			  (highlight-indent-guides-mode nil)
			  (highlight-indentation-mode t)
			  ))
  ;; :bind ("C-x C-<return>" . lsp-find-definition)
  )

(defun python-reformat ()
  (interactive)
  (py-isort-buffer)
  (py-yapf-buffer))
