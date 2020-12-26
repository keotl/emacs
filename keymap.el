;; Cursor Movement
(defun back-to-indentation-or-beginning () (interactive)
  (if (= (point) (progn (back-to-indentation) (point)))
      (beginning-of-line)))
(global-set-key (kbd "C-a") 'back-to-indentation-or-beginning)
(setq scroll-error-top-bottom t)

;; Text handling
(defun duplicate-line()
  (interactive)
  (move-beginning-of-line 1)
  (kill-line)
  (yank)
  (open-line 1)
  (next-line 1)
  (yank)
)

;; Leader keys
(use-package general
  :init (global-set-key (kbd "M-m") nil)
  :config
  (general-create-definer keotl/leader-keys :prefix "M-m")
  (keotl/leader-keys "tt" '(counsel-load-theme :which-key "choose theme"))
  (keotl/leader-keys "xld" '(duplicate-line :which-key "duplicate line"))
  ;; Window management
  (keotl/leader-keys "wm" '(delete-other-windows :which-key "maximize"))
  (keotl/leader-keys "w/" '(split-window-right :which-key "split vertically"))
  (keotl/leader-keys "w-" '(split-window-below :which-key "split horizontally"))
  (keotl/leader-keys "w+" '(toggle-window-split :which-key "toggle split direction"))
  )


;; Transient mini-states
(use-package hydra)

(defhydra hydra-text-scale (:timeout 4)
  "scale text"
  ("p" text-scale-increase "up")
  ("n" text-scale-decrease "down")
  ("RET" nil "finished" :exit t))
(keotl/leader-keys
  "ts" '(hydra-text-scale/body :which-key "scale text"))


