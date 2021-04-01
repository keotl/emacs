(setq load-path (cons  "/lib/erlang/lib/tools-3.3/emacs"
      load-path))
      (setq erlang-root-dir "/lib/erlang")
      (setq exec-path (cons "/lib/erlang/bin" exec-path))
      (require 'erlang-start)
(add-hook 'erlang-mode-hook 'lsp-deferred)
