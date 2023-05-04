(load  (concat (file-name-directory load-file-name) "../util/py-yapf.el"))
(load  (concat (file-name-directory load-file-name) "../util/python-isort.el"))

(use-package lsp-pyright
  :ensure t
  :hook (python-mode . (lambda ()
                          (require 'lsp-pyright)
                          (lsp-deferred)
			  (smartparens-mode)
			  ))
  :bind (:map python-mode-map ("C-c C-f" . python-reformat))
  ;; :bind (:map python-mode-map ("C-c C-f" . py-yapf-buffer))
  ;; :bind ("C-x C-<return>" . lsp-find-definition)
  )

(defun python-reformat ()
  (interactive)
  (py-isort-buffer)
  (py-yapf-buffer))
