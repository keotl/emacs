(use-package magit
  :config
  ;; (add-hook 'magit-status-mode-hook 'evil-normal-state)
  ;; (+layout-bepo-rotate-ts-bare-keymap '(magit-section-mode-map))
  ;; (+layout-bepo-rotate-keymaps
  ;;    '(magit-log-read-revs-map
  ;;      magit-log-mode-map
  ;;      ;; NOTE: magit-cherry-mode could be moved of magit-log anyday, be
  ;;      ;; careful
  ;;      magit-cherry-mode-map))
  ;; (+layout-bepo-rotate-keymaps '(magit-reflog-mode-map))
  ;; (+layout-bepo-rotate-keymaps
  ;;    '(magit-status-mode-map
  ;;      magit-staged-section-map
  ;;      magit-unstaged-section-map
  ;;      magit-untracked-section-map))
  ;; (+layout-bepo-rotate-keymaps
  ;;    '(magit-diff-mode-map
  ;;      magit-diff-section-base-map))
  ;; (+layout-bepo-rotate-keymaps
  ;;  '(magit-process-mode-map))
  ;; (+layout-bepo-rotate-keymaps
  ;;  '(magit-refs-mode-map))
  ;; (+layout-bepo-rotate-keymaps
  ;;  '(magit-blob-mode-map))
  ;; (+layout-bepo-rotate-ts-bare-keymap
  ;;  '(magit-mode-map))
  :bind
  (:map magit-mode-map ("<SPC>" . nil))
  (:map magit-mode-map ("w" . nil))
  (:map magit-mode-map ("w w" . 'evil-window-next))
  (:map magit-mode-map ("w c" . 'evil-window-left))
  (:map magit-mode-map ("w r" . 'evil-window-right))
  (:map magit-mode-map ("w s" . 'evil-window-up))
  (:map magit-mode-map ("w t" . 'evil-window-down))
  (:map magit-mode-map ("w o" . 'delete-other-windows))
  (:map magit-mode-map ("w l" . 'evil-window-delete))
  ;; (:map magit-mode-map ("s" . nil))
  ;; (:map magit-mode-map ("t" . nil))
  )
