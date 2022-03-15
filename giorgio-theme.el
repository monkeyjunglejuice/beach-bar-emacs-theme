;;; giorgio-theme.el --- A sunny and calm theme inspired by the paintings of Giorgio di Chirico  -*- lexical-binding: t; -*-

;; Copyright (C) 2021 Dan Dee

;; Author: Dan Dee <monkeyjunglejuice@pm.me>
;; URL: https://github.com/monkeyjunglejuice/giorgio-theme-emacs
;; Version: 0.1.0
;; Package-Requires: ((emacs "26.1"))
;; Keywords: faces, theme
;; SPDX-License-Identifier: MIT

;; This file is not part of GNU Emacs.

;;; Commentary:
;; "Giorgio" is a custom theme for Emacs, inspired by the paintings
;; created by the italian artist Giorgio di Chirico between 1913 and 1914.
;; The theme aims to be sunny and calm and resembles the bright daylight
;; and long shadows of mediterranean cities.

;;; Credits:
;; The theme is initially based on the notink-theme by MetroWind

;;; Code:

(deftheme giorgio "A sunny and calm Emacs theme, inspired by the paintings of Giorgio di Chirico.")

;; Colors
(let* ((color-fg           "#343327")
       (color-fg-alt       "#000000")
       (color-dimmed       "#8d8973")
       (color-bg           "#fff8dc")
       (color-bg-alt       "#efe8cd")
       (color-hl           "#c3eed2")
       (color-middle       "#64b6a8")
       (color-dark         "#0b7e71")
       (color-bright       "#d46f29")
       (color-strong       "#9e240a")
       (color-light-red    "#fcd0be")
       (color-light        "#ffefc2"))

  (custom-theme-set-faces
   'giorgio
   `(default ((t (:background ,color-bg :foreground ,color-fg))))
   `(cursor ((t (:background ,color-fg))))
   `(region ((t (:foreground ,color-dark :background ,color-hl))))
   `(success ((t (:foreground ,color-dark :background ,color-hl))))
   `(warning ((t (:foreground ,color-bright :background ,color-light))))
   `(error ((t (:foreground ,color-strong :background ,color-light-red))))
   `(secondary-selection ((t (:background ,color-bg-alt))))
   `(mode-line ((t (:background ,color-fg :foreground ,color-bg :box nil))))
   `(mode-line-buffer-id ((t (:foreground ,color-bg :weight bold))))
   `(mode-line-inactive ((t (:background ,color-dimmed :foreground ,color-bg))))
   `(fringe ((t (:background ,color-bg))))
   `(vertical-border ((t (:foreground ,color-fg :background nil))))
   `(minibuffer-prompt ((t (:foreground ,color-fg-alt :weight bold))))

   `(font-lock-face ((t (:foreground ,color-middle))))
   `(font-lock-builtin-face ((t (:foreground ,color-strong))))
   `(font-lock-comment-face ((t (:foreground ,color-dimmed :inherit fixed-pitch-serif))))
   `(font-lock-doc-face ((t (:foreground ,color-dimmed :slant italic :inherit fixed-pitch-serif))))
   `(font-lock-constant-face ((t (:foreground ,color-fg-alt))))
   `(font-lock-function-name-face ((t (:foreground ,color-fg :weight bold :slant italic))))
   `(font-lock-keyword-face ((t (:foreground ,color-bright))))
   `(font-lock-string-face ((t (:foreground ,color-dark :inherit fixed-pitch-serif))))
   `(font-lock-type-face ((t (:weight bold))))
   `(font-lock-variable-name-face ((t (:slant italic))))
   `(font-lock-warning-face ((t (:foreground ,color-strong :slant italic))))
   `(font-lock-regexp-grouping-construct ((t (:foreground ,color-bright))))
   `(font-lock-regexp-grouping-backslash ((t (:foreground ,color-bright))))

   `(isearch ((t (:foreground ,color-bg :background ,color-bright :underline t))))
   `(isearch-fail ((t (:inherit error))))
   `(lazy-highlight ((t (:background ,color-hl :underline t))))

   `(link ((t (:foreground ,color-dark :underline t))))
   `(link-visited ((t (:foreground ,color-middle :underline t))))
   `(button ((t (:inherit link))))
   `(help-face-button ((t (:inherit button))))
   `(header-line ((t (:foreground ,color-dimmed :background ,color-bg-alt :slant italic :inherit fixed-pitch-serif))))
   `(shadow ((t (:foreground ,color-dimmed))))
   `(show-paren-match ((t (:foreground ,color-fg :background ,color-hl :weight bold))))
   `(show-paren-mismatch ((t (:inherit error))))
   `(highlight ((t (:foreground ,color-fg-alt :underline (:color ,color-fg-alt)))))
   `(hl-line ((t (:underline (:color ,color-dimmed) :extend t))))
   `(widget-field ((t (:foreground ,color-fg-alt :background ,color-bg-alt))))
   `(trailing-whitespace ((t (:background ,color-light-red))))
   `(escape-glyph ((t (:inverse-video t))))

   ;; Shell-mode
   `(sh-heredoc ((t (:foreground nil :inherit font-lock-string-face))))
   `(sh-quoted-exec ((t (:inherit font-lock-function-name-face))))

   ;; Dired
   `(dired-header ((t (:foreground ,color-bright :slant italic))))
   `(dired-directory ((t (:weight bold))))
   `(dired-symlink ((t (:slant italic))))
   `(dired-mark ((t (:foreground ,color-bright :background ,color-light))))
   `(dired-marked ((t (:foreground ,color-dark :background ,color-hl))))
   `(dired-flagged ((t (:foreground ,color-strong :background ,color-light-red))))
   `(dired-perm-write ((t (:foreground ,color-strong))))
   `(dired-special ((t (:foreground ,color-middle))))

   ;; Eshell
   `(eshell-prompt ((t (:inherit minibuffer-prompt))))
   `(eshell-ls-directory ((t (:inherit dired-directory))))
   `(eshell-ls-archive ((t (:slant italic :inherit dired-directory))))
   `(eshell-ls-symlink ((t (:inherit dired-symlink))))
   `(eshell-ls-executable ((t (:foreground ,color-dark))))
   `(eshell-ls-missing ((t (:inherit error))))
   `(eshell-ls-readonly ((t (:inherit shadow))))
   `(eshell-ls-special ((t (:inherit dired-special))))

   ;; Comint
   `(comint-highlight-prompt ((t (:inherit minibuffer-prompt))))
   `(comint-highlight-input ((t (:foreground ,color-fg))))

   ;; Completions
   `(completions-common-part ((t (:weight bold))))
   `(icomplete-first-match ((t (:foreground ,color-fg-alt :weight bold :underline t))))

   ;; Diff
   `(diff-added ((t (:foreground ,color-dark :background ,color-hl))))
   `(diff-removed ((t (:foreground ,color-strong :background ,color-light-red))))
   `(diff-context ((t (:inherit shadow))))
   `(diff-file-header ((t (:bold t :background ,color-light :weight bold))))
   `(diff-header ((t (:background ,color-light :foreground ,color-fg))))

   ;; Package manager
   `(package-name ((t (:inherit link))))
   `(package-description ((t (:slant italic :inherit fixed-pitch-serif))))
   `(package-status-installed ((t (:foreground ,color-middle))))
   `(package-status-dependency ((t (:foreground ,color-middle :slant italic))))
   `(package-status-built-in ((t (:foreground ,color-dimmed :slant italic))))
   `(package-status-incompat ((t (:slant italic :inherit font-lock-warning-face))))

   ;; Customization
   `(custom-group-tag ((t (:inherit bold))))
   `(custom-variable-tag ((t (:weight bold))))
   `(custom-variable-obsolete ((t (:foreground ,color-dimmed :inherit custom-variable-tag))))
   `(custom-documentation ((t (:slant italic :inherit fixed-pitch-serif))))
   `(custom-visibility ((t (:inherit custom-documentation :underline t))))
   `(custom-state ((t (:foreground ,color-bright))))
   `(custom-button ((t (:foreground ,color-bg :background ,color-middle))))
   `(custom-button-mouse ((t (:foreground ,color-fg :background ,color-hl))))
   `(custom-button-pressed ((t (:foreground ,color-bg :background ,color-bright))))
   `(custom-button-pressed-unraised ((t (:inherit custom-button-pressed))))
   `(custom-button-unraised ((t (:inherit custom-button))))

   ;; Info
   `(info-menu-star ((t (:foreground ,color-bright))))

   ;; Message
   `(message-header-name ((t (:foreground ,color-dimmed :weight bold :slant italic))))
   `(message-header-other ((t (:foreground ,color-dark))))
   `(message-header-cc ((t (:inherit message-header-other))))
   `(message-header-newsgroups ((t (:inherit message-header-other))))
   `(message-header-xheader ((t (:inherit message-header-other))))
   `(message-header-subject ((t (:weight bold))))
   `(message-header-to ((t (:foreground ,color-bright))))
   `(message-cited-text ((t (:foreground ,color-dimmed :inherit italic))))
   `(message-mml ((t (:foreground ,color-bright))))
   `(message-separator ((t (:inherit font-lock-comment-face))))

   ;; ERC
   `(erc-notice-face ((t (:foreground ,color-dark :weight unspecified))))
   `(erc-header-line ((t (:inherit header-line))))
   `(erc-timestamp-face ((t (:foreground ,color-bright :weight unspecified))))
   `(erc-current-nick-face ((t (:background ,color-dark :foreground ,color-bg :weight unspecified))))
   `(erc-input-face ((t (:foreground ,color-dark))))
   `(erc-prompt-face ((t (:inherit minibuffer-prompt))))
   `(erc-my-nick-face ((t (:foreground ,color-fg))))
   `(erc-pal-face ((t (:foreground ,color-dark :inherit italic))))

   ;; TeX
   `(font-latex-sedate-face ((t (:foreground ,color-dark))))
   `(font-latex-math-face ((t (:foreground ,color-fg))))
   `(font-latex-script-char-face ((t (:inherit font-latex-math-face))))

   ;; Outline
   `(outline-1 ((t (:foreground ,color-fg-alt :weight bold :height 1.2))))
   `(outline-2 ((t (:foreground ,color-fg-alt :weight bold))))
   `(outline-3 ((t (:foreground ,color-fg-alt :weight bold))))
   `(outline-4 ((t (:foreground ,color-fg-alt :weight bold))))
   `(outline-5 ((t (:foreground ,color-fg-alt :weight bold))))
   `(outline-6 ((t (:foreground ,color-fg-alt :weight bold))))
   `(outline-7 ((t (:foreground ,color-fg-alt :weight bold))))
   `(outline-8 ((t (:foreground ,color-fg-alt :weight bold))))

   ;; Org-mode
   `(org-hide ((t (:foreground ,color-bg))))
   `(org-table ((t (:foreground ,color-fg :inherit fixed-pitch-serif))))
   `(org-code ((t (:background ,color-bg-alt :inherit fixed-pitch))))
   `(org-date ((t (:foreground ,color-bright))))
   `(org-todo ((t (:foreground ,color-bright :box t :weight normal))))
   `(org-done ((t (:foreground ,color-middle :box t :weight normal))))
   `(org-headline-done ((t (:foreground ,color-dimmed))))
   `(org-latex-and-related ((t (:foreground ,color-dark :italic t))))
   `(org-checkbox ((t (:foreground ,color-fg-alt :weight normal :inherit fixed-pitch))))
   `(org-verbatim ((t (:inherit font-lock-string-face))))
   `(org-mode-line-clock ((t (:background nil))))
   `(org-document-title ((t (:foreground ,color-fg-alt :weight bold))))
   `(org-drawer ((t (:inherit font-lock-comment-face))))
   `(org-block ((t (:foreground ,color-fg :background ,color-bg-alt :inherit fixed-pitch :extend t))))
   `(org-block-begin-line ((t (:inherit font-lock-comment-face))))
   `(org-block-end-line ((t (:inherit font-lock-comment-face))))
   `(org-meta-line ((t (:inherit font-lock-comment-face))))
   `(org-document-info-keyword ((t (:inherit font-lock-comment-face))))
   `(org-document-info ((t (:foreground ,color-dark))))
   `(org-archived ((t (:foreground ,color-dimmed))))

   ;; org-tree-slide
   `(org-tree-slide-header-overlay-face ((t (:inherit font-lock-comment-face :foreground nil :background nil))))

   ;; Compilation
   `(compilation-error ((t (:inherit error))))
   `(compilation-warning ((t (:inherit warning))))
   `(compilation-info ((t (:foreground ,color-dark))))

   ;; Whitespace
   `(whitespace-trailing ((t (:background ,color-light-red))))
   `(whitespace-line ((t (:inherit whitespace-trailing))))
   `(whitespace-space (( t(:foreground ,color-middle))))
   `(whitespace-newline ((t (:inherit whitespace-space))))
   `(whitespace-empty ((t (:inherit whitespace-line))))

   ;; Smart parens
   `(sp-pair-overlay-face ((t (:background ,color-light))))

   ;; Rainbow delimiters
   `(rainbow-delimiters-depth-1-face ((t (:foreground ,color-fg :weight light))))
   `(rainbow-delimiters-depth-2-face ((t (:foreground ,color-dimmed :weight light))))
   `(rainbow-delimiters-depth-3-face ((t (:foreground ,color-dimmed :weight light))))
   `(rainbow-delimiters-depth-4-face ((t (:foreground ,color-dimmed :weight light))))
   `(rainbow-delimiters-depth-5-face ((t (:foreground ,color-dimmed :weight light))))
   `(rainbow-delimiters-depth-6-face ((t (:foreground ,color-dimmed :weight light))))
   `(rainbow-delimiters-depth-7-face ((t (:foreground ,color-dimmed :weight light))))
   `(rainbow-delimiters-depth-8-face ((t (:foreground ,color-dimmed :weight light))))
   `(rainbow-delimiters-depth-9-face ((t (:foreground ,color-dimmed :weight light))))
   `(rainbow-delimiters-unmatched-face ((t (:inherit error))))

   ;; Paren face
   `(parenthesis ((t (:inherit shadow :weight light))))

   ;; Git-commit
   `(git-commit-summary ((t (:foreground ,color-fg))))
   `(git-commit-comment-heading ((t (:slant italic :inherit font-lock-comment-face))))
   `(git-commit-comment-branch-local ((t (:slant italic :weight bold))))
   `(git-commit-comment-branch-remote ((t (:slant italic :weight bold))))
   `(git-commit-comment-file ((t (:foreground ,color-bright :background ,color-light))))
   `(git-commit-comment-action ((t (:weight bold :inherit font-lock-comment-face))))

   ;; Magit
   `(magit-branch-local ((t (:weight bold))))
   `(magit-branch-remote ((t (:weight bold :slant italic))))
   `(magit-tag ((t (:foreground ,color-dark :background nil :inherit italic))))
   `(magit-hash ((t (:foreground ,color-bright))))
   `(magit-section-title ((t (:foreground ,color-fg :background nil))))
   `(magit-section-heading ((t (:background nil :foreground ,color-fg))))
   `(magit-section-heading-selection ((t (:inherit region))))
   `(magit-section-highlight ((t (:background ,color-bg-alt))))
   `(magit-item-highlight ((t (:foreground ,color-fg :background ,color-bg-alt))))
   `(magit-log-author ((t (:foreground ,color-dark))))
   `(magit-diff-added ((t (:inherit diff-added))))
   `(magit-diffstat-added ((t (:foreground ,color-dark))))
   `(magit-diff-added-highlight ((t (:inherit magit-diff-added))))
   `(magit-diff-removed ((t (:inherit diff-removed))))
   `(magit-diffstat-removed ((t (:foreground ,color-strong))))
   `(magit-diff-removed-highlight ((t (:inherit magit-diff-removed))))
   `(magit-diff-context ((t (:inherit diff-context))))
   `(magit-diff-context-highlight ((t (:foreground ,color-dimmed :inherit magit-section-highlight))))
   `(magit-popup-argument ((t (:inherit font-lock-function-name-face))))
   `(magit-popup-disabled-argument ((t (:inherit font-lock-comment-face))))
   `(magit-process-ok ((t (:inherit success))))
   `(magit-diff-hunk-heading ((t (:background ,color-bg :inherit header-line :underline t))))
   `(magit-diff-hunk-heading-highlight ((t (:inherit magit-section-highlight))))
   `(magit-filename ((t (:inherit git-commit-comment-file))))

   ;; Git-gutter-fringe
   `(git-gutter-fr:modified ((t (:foreground ,color-dark))))
   `(git-gutter-fr:added ((t (:foreground ,color-dark))))
   `(git-gutter-fr:deleted ((t (:foreground ,color-dark))))

   ;; Company
   `(company-echo ((t (:inherit company-preview))))
   `(company-echo-common ((t (:inherit company-tooltip-common))))
   `(company-preview ((t (:foreground ,color-fg))))
   `(company-preview-common ((t (:foreground ,color-fg :background nil))))
   `(company-tooltip-search ((t (:inherit lazy-highlight))))
   `(company-tooltip-search-selection ((t (:foreground ,color-fg-alt :inherit company-tooltip-search))))
   `(company-tooltip ((t (:foreground ,color-fg :background ,color-light))))
   `(company-tooltip-annotation ((t (:foreground ,color-fg))))
   `(company-tooltip-annotation-selection ((t (:foreground ,color-fg-alt :weight normal))))
   `(company-tooltip-common ((t (:foreground ,color-bright))))
   `(company-tooltip-common-selection ((t (:foreground ,color-bright))))
   `(company-tooltip-selection ((t (:foreground ,color-fg-alt :background ,color-light :weight bold :underline (:color ,color-bright)))))
   `(company-scrollbar-bg ((t (:background ,color-light))))
   `(company-scrollbar-fg ((t (:background ,color-dimmed))))

   ;; Flymake
   `(flymake-error ((t (:underline (:color ,color-strong :style wave)))))
   `(flymake-warning ((t (:underline (:color ,color-bright :style wave)))))
   `(flymake-note ((t (:underline (:color ,color-middle :style wave)))))

   ;; Flycheck
   `(flycheck-error ((t (:underline (:color ,color-strong :style wave)))))
   `(flycheck-fringe-error ((t (:foreground ,color-bg :background ,color-strong))))
   `(flycheck-warning ((t (:underline (:color ,color-bright :style wave)))))
   `(flycheck-fringe-warning ((t (:foreground ,color-bg :background ,color-bright))))
   `(flycheck-info ((t (:underline (:color ,color-middle :style wave)))))
   `(flycheck-fringe-info ((t (:foreground ,color-bg :background ,color-middle))))

   ;; LSP
   `(lsp-headerline-breadcrumb-path-face ((t (:foreground ,color-fg))))
   `(lsp-headerline-breadcrumb-path-error-face ((t (:inherit error))))
   `(lsp-headerline-breadcrumb-separator-face ((t (:foreground ,color-fg))))

   ;; Eglot
   `(eglot-highlight-symbol-face ((t (:inherit lazy-highlight))))

   ;; CSV
   `(csv-separator-face ((t (:foreground ,color-strong))))

   ;; CSS
   `(css-selector ((t (:weight bold))))
   `(css-property ((t (:inherit font-lock-builtin-face))))

   ;; Web-mode
   `(web-mode-html-tag-bracket-face ((t (:inherit shadow))))
   `(web-mode-html-tag-face ((t (:weight bold :inherit shadow))))
   `(web-mode-html-attr-name-face ((t (:inherit shadow :slant italic))))
   `(web-mode-css-selector-face ((t (:inherit css-selector))))
   `(web-mode-css-property-name-face ((t (:inherit css-property))))
   `(web-mode-doctype-face ((t (:inherit shadow))))
   `(web-mode-css-color-face ((t (:foreground ,color-fg))))

   ;; Slime
   `(slime-repl-inputed-output-face ((t (:foreground ,color-dark))))
   `(slime-repl-output-mouseover-face ((t (:foreground ,color-bright :box nil))))
   `(slime-repl-input-face ((t (:foreground ,color-fg))))
   `(sldb-section-face ((t (:foreground ,color-dimmed :weight bold))))
   `(sldb-restartable-frame-line-face ((t (:inherit link))))

   ;; Cider
   `(cider-result-overlay-face ((t (:background ,color-light))))
   `(cider-fringe-good-face ((t (:foreground ,color-dark))))
   `(cider-warning-highlight-face ((t (:foreground ,color-bright :background ,color-light :slant italic))))
   `(cider-test-error-face ((t (:inherit font-lock-warning-face))))
   `(cider-test-failure-face ((t (:inherit font-lock-warning-face))))
   `(cider-test-success-face ((t (:foreground ,color-middle :weight bold))))
   `(cider-repl-prompt-face ((t (:inherit minibuffer-prompt))))
   `(cider-repl-stdout-face ((t (:foreground ,color-fg))))
   `(cider-repl-stderr-face ((t (:inherit font-lock-warning-face))))
   `(cider-stacktrace-error-class-face ((t (:inherit font-lock-warning-face))))
   `(cider-error-highlight-face ((t (:inherit error))))

   ;; Clojure-mode
   `(clojure-keyword-face ((t (:inherit font-lock-builtin-face))))

   ;; Tuareg
   `(tuareg-font-lock-interactive-output-face ((t (:foreground ,color-dark))))
   `(tuareg-font-lock-interactive-error-face ((t (:inherit error))))
   `(tuareg-font-lock-interactive-directive-face ((t (:foreground ,color-middle))))
   `(tuareg-font-lock-operator-face ((t (:foreground ,color-fg-alt))))
   `(tuareg-font-lock-module-face ((t (:inherit shadow))))
   `(tuareg-font-lock-governing-face ((t (:foreground ,color-bright :weight bold))))
   `(tuareg-font-lock-label-face ((t (:inherit font-lock-builtin-face))))
   `(tuareg-font-lock-line-number-face ((t (:inherit linum))))
   `(tuareg-font-double-colon-face ((t (:inherit tuareg-font-lock-governing-face))))
   `(tuareg-font-lock-error-face ((t (:inherit error))))

   ;; Merlin
   `(merlin-compilation-error-face ((t (:inherit error))))
   `(merlin-type-face ((t (:background ,color-hl))))

   ;; Merlin-eldoc
   `(merlin-eldoc-occurrences-face ((t (:inherit lazy-highlight))))

   ;; Utop
   `(utop-frozen ((t (:foreground ,color-fg))))
   `(utop-prompt ((t (:inherit minibuffer-prompt))))
   `(utop-error  ((t (:inherit error))))

   ;; Selectrum
   `(selectrum-mouse-highlight ((t (:background nil :underline t :extend t))))
   `(selectrum-prescient-primary-highlight ((t (:inherit completions-common-part))))

   ;; Marginalia
   `(marginalia-archive ((t (:inherit nil))))
   `(marginalia-key ((t (:inherit nil))))
   `(marginalia-number ((t (:inherit nil))))
   `(marginalia-file-priv-dir ((t (:weight bold))))
   `(marginalia-file-priv-read ((t (:foreground ,color-fg))))
   `(marginalia-file-priv-write ((t (:foreground ,color-strong))))
   `(marginalia-file-priv-exec ((t (:foreground ,color-dark))))

   ;; Consult
   `(consult-preview-line ((t (:inherit highlight))))
   `(consult-preview-cursor ((t (:background ,color-bg :underline nil))))

   ;; Helm
   `(helm-candidate-number ((t (:foreground ,color-dimmed :background nil))))
   `(helm-source-header ((t (:inherit font-lock-comment-face :background unspecified :foreground unspecified))))
   `(helm-selection ((t (:inherit highlight))))
   `(helm-prefarg ((t (:foreground ,color-dark))))
   `(helm-ff-file ((t (:foreground ,color-fg))))
   `(helm-ff-directory ((t (:inherit dired-directory :foreground unspecified))))
   `(helm-ff-executable ((t (:inherit eshell-ls-executable :foreground unspecified))))
   `(helm-ff-file-extension ((t (:foreground nil :background nil))))
   `(helm-ff-invalid-symlink ((t (:slant italic :inherit error))))
   `(helm-ff-symlink ((t (:inherit dired-symlink))))
   `(helm-ff-prefix ((t (:background nil))))
   `(helm-ff-dotted-directory ((t (:background nil :foreground ,color-middle))))
   `(helm-M-x-key ((t (:foreground ,color-bright))))
   `(helm-buffer-file ((t (:foreground ,color-fg))))
   `(helm-buffer-archive ((t (:inherit helm-buffer-file))))
   `(helm-buffer-directory ((t (:inherit dired-directory))))
   `(helm-buffer-not-saved ((t (:inherit helm-buffer-file :foreground unspecified :background ,color-strong))))
   `(helm-buffer-saved-out ((t (:inherit helm-buffer-not-saved))))
   `(helm-buffer-modified ((t (:foreground ,color-dark))))
   `(helm-buffer-process ((t (:foreground ,color-dark))))
   `(helm-buffer-size ((t (:foreground ,color-dark))))
   `(helm-match ((t (:inherit completions-common-part))))

   ;; Adoc-mode
   `(markup-meta-hide-face ((t (:height 1.0 :foreground ,color-bright))))
   `(markup-meta-face ((t (:height 1.0 :foreground ,color-dark :family nil))))
   `(markup-reference-face ((t (:underline nil :foreground ,color-dark))))
   `(markup-gen-face ((t (:foreground nil))))
   `(markup-passthrough-face ((t (:inherit markup-dark))))
   `(markup-replacement-face ((t (:family nil :foreground ,color-dark))))
   `(markup-list-face ((t (:weight bold))))
   `(markup-secondary-text-face ((t (:height 1.0 :foreground ,color-dark))))
   `(markup-verbatim-face ((t (:foreground ,color-dark))))
   `(markup-code-face ((t (:inherit markup-verbatim-face))))
   `(markup-typewriter-face ((t (:inherit nil))))
   `(markup-complex-replacement-face ((t (:background ,color-light :foreground ,color-fg))))
   `(markup-title-0-face ((t (:height 1.2 :inherit markup-gen-face))))
   `(markup-title-1-face ((t (:height 1.0 :inherit markup-gen-face))))
   `(markup-title-2-face ((t (:height 1.0 :inherit markup-gen-face))))
   `(markup-title-3-face ((t (:height 1.0 :inherit markup-gen-face))))
   `(markup-title-4-face ((t (:height 1.0 :inherit markup-gen-face))))
   `(markup-title-5-face ((t (:height 1.0 :inherit markup-gen-face))))

   ;; Highlight-indent-guides
   `(highlight-indent-guides-odd-face ((t (:background ,color-bright))))
   `(highlight-indent-guides-even-face ((t (:background nil))))

   ;; Notmuch
   `(notmuch-search-unread-face ((t (:foreground ,color-bright))))
   `(notmuch-tag-face ((t (:foreground ,color-dark))))
   `(notmuch-tree-match-author-face ((t (:foreground ,color-middle))))
   `(notmuch-tree-no-match-face ((t (:foreground ,color-dark))))
   `(notmuch-tree-match-tag-face ((t (:inherit notmuch-tree-match-author-face))))
   `(notmuch-tag-unread-face ((t (:foreground ,color-fg :background ,color-middle))))
   `(notmuch-message-summary-face ((t (:foreground ,color-dark))))

   ;; Telega
   `(telega-msg-heading ((t (:foreground ,color-dark :background nil :inherit nil))))
   `(telega-msg-inline-reply ((t (:foreground ,color-bright :inherit nil))))
   `(telega-entity-type-texturl ((t (:inherit nil :foreground ,color-dark))))

   ;; Beancount
   `(beancount-date ((t (:inherit italic :foreground nil))))
   `(beancount-account ((t (:foreground ,color-fg))))

   ;; W3m
   `(w3m-anchor ((t (:inherit link))))
   `(w3m-arrived-anchor ((t (:inherit link-visited))))
   `(w3m-current-anchor ((t (:inherit highlight))))
   `(w3m-error ((t (:inherit error))))
   `(w3m-header-line-content ((t (:inherit header-line))))
   `(w3m-header-line-background ((t (:inherit header-line))))
   `(w3m-header-line-title ((t (:inherit header-line))))
   `(w3m-form ((t (:inherit widget-field))))
   `(w3m-form-button ((t (:inherit custom-button))))
   `(w3m-form-button-mouse ((t (:inherit custom-button-mouse))))
   `(w3m-form-button-pressed ((t (:inherit custom-button-pressed))))

   ;; Elfeed
   `(elfeed-search-date-face ((t (:foreground ,color-middle))))
   `(elfeed-search-title-face ((t (:foreground ,color-dimmed))))
   `(elfeed-search-unread-title-face ((t (:foreground ,color-fg))))
   `(elfeed-search-feed-face ((t (:foreground ,color-middle))))
   `(elfeed-search-tag-face ((t (:foreground ,color-fg))))
   `(elfeed-search-last-update-face ((t (:inherit font-lock-comment-face))))
   `(elfeed-search-unread-count-face ((t (:weight bold))))
   `(elfeed-search-filter-face ((t (:foreground ,color-bright))))
   `(elfeed-log-debug-level-face ((t (:foreground ,color-middle))))
   `(elfeed-log-error-level-face ((t (:inherit error))))
   `(elfeed-log-info-level-face ((t (:foreground ,color-dark))))
   `(elfeed-log-warn-level-face ((t (:inherit warning))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'giorgio)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; giorgio-theme.el ends here
