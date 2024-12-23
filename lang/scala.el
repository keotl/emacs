(with-eval-after-load 'eglot
  (add-to-list 'eglot-server-programs
               '(scala-ts-mode . ("~/.emacs.d/.cache/lsp/metals/metals"))))
;; TODO change language-server path

(load  (concat (file-name-directory load-file-name) "../vendor/scala-ts-mode.el"))
