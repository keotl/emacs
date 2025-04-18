;;; savoy-truffle-theme.el --- Theme 

;; Copyright (C) 2020 , Kento Lauzon

;; Author: Kento A. Lauzon
;; Version: 0.1
;; Package-Requires: ((emacs "24"))
;; Created with ThemeCreator, https://github.com/mswift42/themecreator.


;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program. If not, see <http://www.gnu.org/licenses/>.

;; This file is not part of Emacs.

;;; Commentary:

;;; Code:

 (deftheme savoy-truffle)
(let ((class '((class color) (min-colors 89)))
      (fg0 "#5D6B7A")
       (fg1 "#A9B7C6")
       (fg2 "#9ba8b6")
       (fg3 "#073447")
       (region "#073447")
       (fg4 "#808b96")
       (bg1 "#040D26")
       (bg2 "#06143b")
       (bg3 "#071847")
       (bg4 "#0a2161")
       (bg5 "#3D5494")
       (builtin "#F84ED0")
       (keyword "#FFD212")
       (yellow "#FFD212")
       (const   "#10A5E1")
       (blue   "#10A5E1")
       (comment "#808080")
       (func    "#6DD8D1")
       (cyan    "#6DD8D1")
       (str     "#17DE4C")
       (green     "#17DE4C")
       (type    "#10A5E1")
       (var     "#F84ED0")
       (magenta     "#F84ED0")
       (localvar     "#F49810")
       (orange     "#F49810")
       (warning "#BC3F3C")
       (warning2 "#F49810")
       (warning3 "#17DE4C")
       )
   (custom-theme-set-faces
   'savoy-truffle
        `(default ((,class (:background ,bg1 :foreground ,fg1))))
        `(error ((,class (:foreground ,warning))))
        ;;`(font-lock-builtin-face ((,class (:foreground ,builtin))))
        `(font-lock-comment-face ((,class (:foreground ,comment))))
	`(font-lock-negation-char-face ((,class (:foreground ,const))))
	`(font-lock-reference-face ((,class (:foreground ,const))))
	`(font-lock-constant-face ((,class (:foreground ,const))))
        `(font-lock-doc-face ((,class (:foreground ,comment))))
        `(font-lock-function-name-face ((,class (:foreground ,func :weight ,'bold))))
        ;; `(font-lock-keyword-face ((,class (:bold ,class :foreground ,keyword :family ,"Victor Mono" :height, 120 :weight ,'bold, :italic t)))) ;; Compatible with fira code 110
        ;; `(font-lock-keyword-face ((,class (:bold ,class :foreground ,keyword :family ,"Victor Mono", :weight ,'bold, :italic t))))
	`(font-lock-keyword-face ((,class (:bold ,class :foreground ,keyword :weight ,'bold)))) ;; default with fira code
        `(font-lock-string-face ((,class (:foreground ,str))))
        `(font-lock-type-face ((,class (:foreground ,type :weight ,'bold ))))
        `(font-lock-variable-name-face ((,class (:foreground ,var))))
        `(font-lock-warning-face ((,class (:foreground ,warning :background ,bg2))))
        `(term-color-black ((,class (:foreground ,fg2 :background nil))))
        `(region ((,class (:background ,fg3))))
        `(highlight ((,class (:foreground ,fg1 :background ,bg3 :weight ,'bold))))
	`(hl-line ((,class (:background  ,bg2))))
	`(fringe ((,class (:background ,bg1 :foreground ,fg4))))
	`(cursor ((,class (:background ,fg1))))
        `(show-paren-match ((,class (:foreground ,localvar :weight ,'bold))))
        `(isearch ((,class (:bold t :foreground ,warning :background ,bg3))))
        `(mode-line ((,class (:box (:line-width 1 :color ,region) :bold t :foreground ,fg4 :background ,bg2))))
        `(mode-line-inactive ((,class (:box (:line-width 1 :color ,region) :foreground ,fg0 :background ,bg1 :weight normal))))
        `(mode-line-buffer-id ((,class (:bold t :foreground ,func :background nil))))
	`(mode-line-highlight ((,class (:foreground ,keyword :box (:color ,region) :weight bold))))
        `(mode-line-emphasis ((,class (:foreground ,fg1))))
	`(line-number ((,class (:background ,bg2 :foreground, fg0))))
	`(line-number-current-line ((,class (:background ,bg2 :foreground, fg1 :weight, 'bold))))
	`(vertical-border ((,class (:foreground ,fg3))))
        `(minibuffer-prompt ((,class (:bold t :foreground ,keyword))))
        `(default-italic ((,class (:italic t))))
	`(link ((,class (:foreground ,const :underline t))))
	`(org-code ((,class (:foreground ,fg2))))
	`(org-hide ((,class (:foreground ,fg4))))
        `(org-level-1 ((,class (:bold t :foreground ,fg2 :height 1.1))))
        `(org-level-2 ((,class (:bold nil :foreground ,cyan))))
        `(org-level-3 ((,class (:bold t :foreground ,fg4))))
        `(org-level-4 ((,class (:bold nil :foreground ,bg4))))
        `(org-date ((,class (:underline t :foreground ,var) )))
        `(org-footnote  ((,class (:underline t :foreground ,fg4))))
        `(org-link ((,class (:underline t :foreground ,type ))))
        `(org-special-keyword ((,class (:foreground ,func))))
        `(org-block ((,class (:foreground ,fg3))))
        `(org-quote ((,class (:inherit org-block :slant italic))))
        `(org-verse ((,class (:inherit org-block :slant italic))))
        `(org-todo ((,class (:box (:line-width 1 :color ,fg3) :foreground ,keyword :bold t))))
        `(org-done ((,class (:box (:line-width 1 :color ,bg3) :bold t :foreground ,bg4))))
        `(org-warning ((,class (:underline t :foreground ,warning))))
        `(org-agenda-structure ((,class (:weight bold :foreground ,fg3 :box (:color ,fg4) :background ,bg3))))
        `(org-agenda-date ((,class (:foreground ,var :height 1.1 ))))
        `(org-agenda-date-weekend ((,class (:weight normal :foreground ,fg4))))
        `(org-agenda-date-today ((,class (:weight bold :foreground ,keyword :height 1.4))))
        `(org-agenda-done ((,class (:foreground ,bg4))))
	`(org-scheduled ((,class (:foreground ,type))))
        `(org-scheduled-today ((,class (:foreground ,func :weight bold :height 1.2))))
	`(org-ellipsis ((,class (:foreground ,builtin))))
	`(org-verbatim ((,class (:foreground ,fg4))))
        `(org-document-info-keyword ((,class (:foreground ,func))))
	`(font-latex-bold-face ((,class (:foreground ,type))))
	`(font-latex-italic-face ((,class (:foreground ,var :italic t))))
	`(font-latex-string-face ((,class (:foreground ,str))))
	`(font-latex-match-reference-keywords ((,class (:foreground ,const))))
	`(font-latex-match-variable-keywords ((,class (:foreground ,var))))
	`(ido-only-match ((,class (:foreground ,warning))))
	`(org-sexp-date ((,class (:foreground ,fg4))))
	`(ido-first-match ((,class (:foreground ,keyword :bold t))))

        `(ivy-current-match ((,class (:background ,bg1 :weight ,'bold :foreground ,magenta :inherit highlight :underline t))))
        `(ivy-highlight-face ((,class (:background ,bg2 :foreground ,cyan :inherit highlight :weight ,'bold))))
	`(ivy-minibuffer-match-highlight ((,class (:background ,bg2 :foreground ,blue :inherit highlight :weight ,'bold))))
	`(ivy-minibuffer-match-face-1 ((,class (:background ,bg3 :foreground ,blue :inherit highlight :weight ,'bold))))
	`(ivy-minibuffer-match-face-2 ((,class (:background ,bg3 :foreground ,blue :inherit highlight :weight ,'bold))))
	`(ivy-minibuffer-match-face-3 ((,class (:background ,bg3 :foreground ,blue :inherit highlight :weight ,'bold))))
	`(gnus-header-content ((,class (:foreground ,keyword))))
	`(gnus-header-from ((,class (:foreground ,var))))
	`(gnus-header-name ((,class (:foreground ,type))))
	`(gnus-header-subject ((,class (:foreground ,func :bold t))))
	`(mu4e-view-url-number-face ((,class (:foreground ,type))))
	`(mu4e-cited-1-face ((,class (:foreground ,fg2))))
	`(mu4e-cited-7-face ((,class (:foreground ,fg3))))
	`(mu4e-header-marks-face ((,class (:foreground ,type))))
	`(ffap ((,class (:foreground ,fg4))))
	`(js2-private-function-call ((,class (:foreground ,const))))
	`(js2-jsdoc-html-tag-delimiter ((,class (:foreground ,str))))
	`(js2-jsdoc-html-tag-name ((,class (:foreground ,var))))
	`(js2-external-variable ((,class (:foreground ,type  ))))
        `(js2-function-param ((,class (:foreground ,const))))
        `(js2-jsdoc-value ((,class (:foreground ,str))))
        `(js2-private-member ((,class (:foreground ,fg3))))
        `(js3-warning-face ((,class (:underline ,keyword))))
        `(js3-error-face ((,class (:underline ,warning))))
        `(js3-external-variable-face ((,class (:foreground ,var))))
        `(js3-function-param-face ((,class (:foreground ,fg2))))
        `(js3-jsdoc-tag-face ((,class (:foreground ,keyword))))
        `(js3-instance-member-face ((,class (:foreground ,const))))
	`(warning ((,class (:foreground ,warning)))) 
	`(ac-completion-face ((,class (:underline t :foreground ,keyword))))
	`(info-quoted-name ((,class (:foreground ,builtin))))
	`(info-string ((,class (:foreground ,str))))
	`(icompletep-determined ((,class :foreground ,builtin)))
        `(undo-tree-visualizer-current-face ((,class :foreground ,builtin)))
        `(undo-tree-visualizer-default-face ((,class :foreground ,fg2)))
        `(undo-tree-visualizer-unmodified-face ((,class :foreground ,var)))
        `(undo-tree-visualizer-register-face ((,class :foreground ,type)))
	`(slime-repl-inputed-output-face ((,class (:foreground ,type))))
        `(trailing-whitespace ((,class :foreground nil :background ,warning)))
        `(rainbow-delimiters-depth-1-face ((,class :foreground ,fg1)))
        `(rainbow-delimiters-depth-2-face ((,class :foreground ,type)))
        `(rainbow-delimiters-depth-3-face ((,class :foreground ,var)))
        `(rainbow-delimiters-depth-4-face ((,class :foreground ,const)))
        `(rainbow-delimiters-depth-5-face ((,class :foreground ,keyword)))
        `(rainbow-delimiters-depth-6-face ((,class :foreground ,fg1)))
        `(rainbow-delimiters-depth-7-face ((,class :foreground ,type)))
        `(rainbow-delimiters-depth-8-face ((,class :foreground ,var)))
        `(magit-item-highlight ((,class :background ,bg3)))
        `(magit-section-heading        ((,class (:foreground ,keyword :weight bold))))
        `(magit-hunk-heading           ((,class (:background ,bg3))))
        `(magit-section-highlight      ((,class (:background ,bg2))))
        `(magit-hunk-heading-highlight ((,class (:background ,bg3))))
        `(magit-diff-context-highlight ((,class (:background ,bg3 :foreground ,fg2))))
	`(magit-diff-hunk-heading-highlight ((,class (:background ,bg4 :foreground ,fg2))))
        `(magit-diffstat-added   ((,class (:foreground ,type))))
        `(magit-diffstat-removed ((,class (:foreground ,var))))
        `(magit-process-ok ((,class (:foreground ,func :weight bold))))
        `(magit-process-ng ((,class (:foreground ,warning :weight bold))))
        `(magit-branch ((,class (:foreground ,const :weight bold))))
	`(magit-branch-local ((,class (:foreground ,blue :weight bold))))
	`(magit-branch-remote ((,class (:foreground ,green :weight bold))))
        `(magit-log-author ((,class (:foreground ,fg0))))
        `(magit-hash ((,class (:foreground ,fg2))))
        `(magit-diff-file-header ((,class (:foreground ,fg2 :background ,bg3))))
        `(lazy-highlight ((,class (:foreground ,fg2 :background ,bg3))))
        `(term ((,class (:foreground ,fg1 :background ,bg1))))
        `(term-color-black ((,class (:foreground ,bg3 :background ,bg3))))
        `(term-color-blue ((,class (:foreground ,func :background ,func))))
        `(term-color-red ((,class (:foreground ,keyword :background ,bg3))))
        `(term-color-green ((,class (:foreground ,type :background ,bg3))))
        `(term-color-yellow ((,class (:foreground ,var :background ,var))))
        `(term-color-magenta ((,class (:foreground ,builtin :background ,builtin))))
        `(term-color-cyan ((,class (:foreground ,str :background ,str))))
        `(term-color-white ((,class (:foreground ,fg2 :background ,fg2))))
        `(rainbow-delimiters-unmatched-face ((,class :foreground ,warning)))
        `(helm-header ((,class (:foreground ,fg2 :background ,bg1 :underline nil :box nil))))
        `(helm-source-header ((,class (:foreground ,keyword :background ,bg1 :underline nil :weight bold))))
        `(helm-selection ((,class (:background ,bg2 :underline nil))))
        `(helm-selection-line ((,class (:background ,bg2))))
        `(helm-visible-mark ((,class (:foreground ,bg1 :background ,bg3))))
        `(helm-candidate-number ((,class (:foreground ,bg1 :background ,fg1))))
        `(helm-separator ((,class (:foreground ,type :background ,bg1))))
        `(helm-time-zone-current ((,class (:foreground ,builtin :background ,bg1))))
        `(helm-time-zone-home ((,class (:foreground ,type :background ,bg1))))
        `(helm-buffer-not-saved ((,class (:foreground ,type :background ,bg1))))
        `(helm-buffer-process ((,class (:foreground ,builtin :background ,bg1))))
        `(helm-buffer-saved-out ((,class (:foreground ,fg1 :background ,bg1))))
        `(helm-buffer-size ((,class (:foreground ,fg1 :background ,bg1))))
        `(helm-ff-directory ((,class (:foreground ,func :background ,bg1 :weight bold))))
        `(helm-ff-file ((,class (:foreground ,fg1 :background ,bg1 :weight normal))))
        `(helm-ff-executable ((,class (:foreground ,var :background ,bg1 :weight normal))))
        `(helm-ff-invalid-symlink ((,class (:foreground ,warning2 :background ,bg1 :weight bold))))
        `(helm-ff-symlink ((,class (:foreground ,keyword :background ,bg1 :weight bold))))
        `(helm-ff-prefix ((,class (:foreground ,bg1 :background ,keyword :weight normal))))
        `(helm-grep-cmd-line ((,class (:foreground ,fg1 :background ,bg1))))
        `(helm-grep-file ((,class (:foreground ,fg1 :background ,bg1))))
        `(helm-grep-finish ((,class (:foreground ,fg2 :background ,bg1))))
        `(helm-grep-lineno ((,class (:foreground ,fg1 :background ,bg1))))
        `(helm-grep-match ((,class (:foreground nil :background nil :inherit helm-match))))
        `(helm-grep-running ((,class (:foreground ,func :background ,bg1))))
        `(helm-moccur-buffer ((,class (:foreground ,func :background ,bg1))))
        `(helm-source-go-package-godoc-description ((,class (:foreground ,str))))
        `(helm-bookmark-w3m ((,class (:foreground ,type))))

	`(dired-directory ((,class (:foreground ,cyan :background ,bg1 :weight ,'bold))))
	`(dired-perm-write ((,class (:foreground ,green :background ,bg1))))

        `(company-echo-common ((,class (:foreground ,bg1 :background ,fg1))))
        `(company-preview ((,class (:background ,bg3 :foreground ,var))))
        `(company-preview-common ((,class (:foreground ,fg2 :background ,fg3 :weight ,'bold))))
        `(company-preview-search ((,class (:foreground ,type :background ,bg3))))
        `(company-scrollbar-bg ((,class (:background ,bg4))))
        `(company-scrollbar-fg ((,class (:foreground ,keyword :background ,bg5))))
        `(company-tooltip ((,class (:foreground ,fg2 :background ,bg3 :bold t))))
        `(company-tooltip-annotation ((,class (:foreground ,blue :weight normal))))
        `(company-tooltip-common ((,class ( :foreground ,fg1 ))))
        `(company-tooltip-common-selection ((,class (:foreground ,str))))
        `(company-tooltip-mouse ((,class (:inherit highlight))))
        `(company-tooltip-selection ((,class (:background ,region :foreground ,fg1, :weight ,'bold))))
        `(company-template-field ((,class (:inherit region))))
        `(web-mode-builtin-face ((,class (:inherit ,font-lock-builtin-face))))
        `(web-mode-comment-face ((,class (:inherit ,font-lock-comment-face))))
        `(web-mode-constant-face ((,class (:inherit ,font-lock-constant-face))))
        `(web-mode-keyword-face ((,class (:foreground ,keyword))))
        `(web-mode-doctype-face ((,class (:inherit ,font-lock-comment-face))))
        `(web-mode-function-name-face ((,class (:inherit ,font-lock-function-name-face))))
        `(web-mode-string-face ((,class (:foreground ,str))))
        `(web-mode-type-face ((,class (:inherit ,font-lock-type-face))))
        `(web-mode-html-attr-name-face ((,class (:foreground ,func))))
        `(web-mode-html-attr-value-face ((,class (:foreground ,keyword))))
        `(web-mode-warning-face ((,class (:inherit ,font-lock-warning-face))))
        `(web-mode-html-tag-face ((,class (:foreground ,builtin))))

	`(lsp-face-highlight-read ((,class (:background ,bg3 :weight ,'bold :underline t))))
	`(lsp-face-highlight-textual ((,class (:background ,bg3 :weight ,'bold :underline t))))
	`(header-line ((,class (:background ,bg2 :weight ,'bold :underline (:color ,region :style line :position t)))))
	`(lsp-headerline-breadcrumb-project-prefix-face ((,class (:foreground ,fg0 :weight ,'normal))))
	`(lsp-headerline-breadcrumb-prefix-face ((,class (:foreground ,fg0 :weight ,'normal))))
	`(lsp-headerline-breadcrumb-symbols-face ((,class (:foreground ,fg0 :weight ,'normal))))
	
	;; `(lsp-face-highlight-read ((,class (:background ,bg3 :weight ,'bold :underline t))))

	`(flymake-note ((,class (:underline (:color ,green)))))
	`(flymake-warning ((,class (:underline (:color ,warning2)))))
	`(flymake-error ((,class (:underline (:color ,warning)))))

	`(highlight-indent-guides-even-face ((,class (:background ,bg2))))
	`(highlight-indent-guides-character-face ((,class (:foreground ,bg5))))

	`(flyspell-incorrect ((,class (:underline (:color ,comment)))))
	`(flyspell-duplicate ((,class (:underline (:color ,comment)))))

        `(jde-java-font-lock-package-face ((t (:foreground ,var))))
        `(jde-java-font-lock-public-face ((t (:foreground ,keyword))))
        `(jde-java-font-lock-private-face ((t (:foreground ,keyword))))
        `(jde-java-font-lock-constant-face ((t (:foreground ,const))))
        `(jde-java-font-lock-modifier-face ((t (:foreground ,fg2))))
        `(jde-jave-font-lock-protected-face ((t (:foreground ,keyword))))
        `(jde-java-font-lock-number-face ((t (:foreground ,var))))

        `(highlight-indentation-face ((,class (:foreground ,bg5))) )
        `(highlight-indentation-current-column-face ((,class (:foreground ,cyan))) )

	;; Breadcrums
        `(breadcrumb-project-base-face ((,class (:foreground ,fg1 :weight ,'bold))))
        `(breadcrumb-project-crumbs-face ((,class (:foreground ,fg1 :weight ,'normal))))
        `(breadcrumb-project-leaf-face ((,class (:foreground ,green))))
	;; breadcrumbs imenu, i.e. symbols
        `(breadcrumb-imenu-crumbs-face ((,class (:foreground ,fg1 :weight ,'normal))))
        `(breadcrumb-imenu-leaf-face ((,class (:foreground ,cyan))))

	;; Eglot
	`(eglot-diagnostic-tag-unnecessary-face ((,class (:underline (:color ,green)))))
	`(typescript-ts-jsx-tag-face  ((,class (:foreground ,blue :weight ,'bold))))
	`(typescript-ts-jsx-attribute-face  ((,class (:foreground ,fg1))))
	`(font-lock-property-use-face  ((,class (:foreground ,fg1))))
	`(font-lock-operator-face ((,class (:foreground ,orange))))
	
	;; font-lock generic
	`(font-lock-function-call-face  ((,class (:foreground ,fg1))))
	`(font-lock-builtin-face  ((,class (:foreground ,fg1))))
	`(font-lock-variable-use-face  ((,class (:foreground ,fg1))))
	))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'savoy-truffle)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; savoy-truffle-theme.el ends here
