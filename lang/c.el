(add-hook 'c-mode-hook 'smartparens-mode)
(add-hook 'c-mode-hook 'lsp-deferred)
(add-hook 'c-mode-hook (lambda () (global-set-key (kbd "C-c C-f") 'lsp-format-buffer)))
