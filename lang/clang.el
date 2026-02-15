;; apt install clangd bear
(with-eval-after-load 'eglot
  (add-to-list 'eglot-server-programs
               '(c-mode . ("clangd")))
  )

(define-auto-insert '("\\.h\\'" . "C header skeleton")
  '(
    (upcase (concat (file-name-base (buffer-file-name)) "_H_"))
    "#ifndef " str \n
    "#define " str \n \n
    _ \n \n
    "#endif // " str \n
    ))

(add-hook 'c-mode-hook 'eglot-ensure)
(add-hook 'c-mode-hook 'auto-insert-mode)
