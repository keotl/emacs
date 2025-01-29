(with-eval-after-load 'eglot
  (add-to-list 'eglot-server-programs
               '(python-mode . ("~/.emacs.d/.cache/lsp/npm/pyright/bin/pyright-langserver" "--stdio")))
  )

(add-hook 'python-mode-hook 'eglot-ensure)
