(with-eval-after-load 'eglot
  (add-to-list 'eglot-server-programs
               '(typescript-ts-mode . ("~/.emacs.d/.cache/lsp/npm/typescript-language-server/bin/typescript-language-server" "--stdio")))
(add-to-list 'eglot-server-programs
               '(tsx-ts-mode . ("~/.emacs.d/.cache/lsp/npm/typescript-language-server/bin/typescript-language-server" "--stdio")))
  )

(with-eval-after-load 'typescript-ts-mode
  (add-hook 'typescript-ts-mode-hook 'eglot-ensure)
  (add-hook 'tsx-ts-mode-hook 'eglot-ensure)
  )

(add-to-list 'auto-mode-alist '("\\.tsx\\'" . tsx-ts-mode))
(add-to-list 'auto-mode-alist '("\\.ts\\'" . typescript-ts-mode))
