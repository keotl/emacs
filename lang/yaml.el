(use-package yaml-mode
  :hook (yaml-mode . (lambda ()
		       (highlight-indent-guides-mode)
		       (auto-fill-mode -1)
		       )))
