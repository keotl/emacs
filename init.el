(load  (concat (file-name-directory load-file-name) "bootstrap.el"))
(set-face-attribute 'default nil :font "Fira Code" :height 110)

;; desktop save mode
(setq desktop-path '("."))
(if (file-exists-p ".emacs.desktop")
    (desktop-save-mode 1))


(load  (concat (file-name-directory load-file-name) "editor.el"))
(load  (concat (file-name-directory load-file-name) "ui.el"))
(load  (concat (file-name-directory load-file-name) "vcs.el"))
(load  (concat (file-name-directory load-file-name) "lang/init.el"))
(load  (concat (file-name-directory load-file-name) "leader.el"))
