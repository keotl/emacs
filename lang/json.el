(add-hook 'js-mode-hook (lambda () 
			   (global-set-key (kbd "C-c C-f") 'prettier-js)
			   (smartparens-mode)
			   ))

