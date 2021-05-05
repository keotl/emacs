(use-package lsp-pyright
  :ensure t
  :hook (python-mode . (lambda ()
                          (require 'lsp-pyright)
                          (lsp-deferred)
			  (smartparens-mode)))
  :bind ("C-x C-<return>" . lsp-find-definition))
