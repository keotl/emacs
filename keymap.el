;; Cursor Movement
(defun back-to-indentation-or-beginning () (interactive)
  (if (= (point) (progn (back-to-indentation) (point)))
      (beginning-of-line)))
(global-set-key (kbd "C-a") 'back-to-indentation-or-beginning)
(setq scroll-error-top-bottom t)

;; Leader keys
(use-package general
  :init (global-set-key (kbd "M-m") nil)
  :config
  (general-create-definer keotl/leader-keys :prefix "M-m")
  (keotl/leader-keys
   "tt" '(counsel-load-theme :which-key "choose theme")))


;; Transient mini-states
(use-package hydra)

(defhydra hydra-text-scale (:timeout 4)
  "scale text"
  ("p" text-scale-increase "up")
  ("n" text-scale-decrease "down")
  ("RET" nil "finished" :exit t))
(keotl/leader-keys
  "ts" '(hydra-text-scale/body :which-key "scale text"))
