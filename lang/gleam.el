(use-package gleam-ts-mode
  :load-path "~/.emacs.d/vendor/gleam-mode"

  :bind (:map gleam-ts-mode-map
              ("C-c C-f" . gleam-ts-format))

  :mode "\\.gleam$"
  :config (add-to-list 'lsp-language-id-configuration '(gleam-ts-mode . "gleam"))
  :hook (gleam-ts-mode . lsp-deferred)
  )

;; Might need to manually patch lsp-mode/lsp-gleam.el to include
;; gleam-ts-mode as an allowed major mode for now.
