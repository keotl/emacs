(load  (concat (file-name-directory load-file-name) "bootstrap.el"))
(set-face-attribute 'default nil :font "Fira Code" :height 110)

(load  (concat (file-name-directory load-file-name) "editor.el"))
(load  (concat (file-name-directory load-file-name) "vcs.el"))
(load  (concat (file-name-directory load-file-name) "lang/init.el"))
(load  (concat (file-name-directory load-file-name) "leader.el"))
