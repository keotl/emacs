(with-eval-after-load 'eglot
  (add-to-list 'eglot-server-programs
               '(scala-ts-mode . ("~/.emacs.d/.cache/lsp/metals/metals")))

  )
;; TODO change language-server path
(with-eval-after-load 'scala-ts-mode

  (add-hook 'scala-ts-mode-hook 'eglot-ensure)
  )
(load  (concat (file-name-directory load-file-name) "../vendor/scala-ts-mode.el"))
(setq treesit-font-lock-level 4)
