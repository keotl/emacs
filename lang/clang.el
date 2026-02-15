;; apt install clangd bear
(with-eval-after-load 'eglot
  (add-to-list 'eglot-server-programs
               '(c-mode . ("clangd")))
  )

(add-hook 'c-mode-hook 'eglot-ensure)
