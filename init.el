;;; -----
;;; Debug
;;; -----

(setq debug-on-error t)

;;; ---------
;;; Interface
;;; ---------

;; Setting this section early in the file is intentional, to have
;; interface modifications applied early.

(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

;; (set-face-attribute 'default nil :font "Iosevka SS04" :height 79)
;; (set-face-attribute 'default nil :font "Hack" :height 77)
;; (set-face-attribute 'default nil :font "Anka/Coder" :height 150)
(set-face-attribute 'default nil :font "Anka/Coder Narrow" :height 122)
;; (set-face-attribute 'default nil :font "scientifica")
;; (set-face-attribute 'default nil :font "Monospace" :height 150)

;; TODO add nlinum-relative and hook to evil mode switch
;; (global-display-line-numbers-mode)

(setq inhibit-startup-message t
      inhibit-splash-screen t)

;;; ---------
;;; Packaging
;;; ---------

;; Bootstrap the package manager, straight.el.
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)

      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; Package `use-package' provides a handy macro by the same name which
;; is essentially a wrapper around `with-eval-after-load' with a lot
;; of handy syntactic sugar and useful features.
(straight-use-package 'use-package)

;; When configuring a feature with `use-package', also tell
;; straight.el to install a package of the same name, unless otherwise
;; specified using the `:straight' keyword.
(setq straight-use-package-by-default t)

;; Tell `use-package' to always load features lazily unless told
;; otherwise. If `:demand' is present, the loading is eager.
(setq use-package-always-defer t)

;;; ----
;;; Fuzz
;;; ----

(load "~/.emacs.d/conf/selectrum/setup.el")

;;; ----------
;;; Completion
;;; ----------

(use-package company
  :defer 3
  :config
  (setq company-show-numbers t)
  (setq company-dabbrev-ignore-case nil)
  (setq company-dabbrev-downcase nil)
  (setq company-tooltip-align-annotations t)

  (global-company-mode +1))

(use-package company-prescient
             :demand t
             :after company
             :config
             (company-prescient-mode +1))

;;; ----
;;; Evil
;;; ----

(use-package evil
  :init
  (evil-mode 1)

  (use-package evil-surround
    :config
    (global-evil-surround-mode 1))
  (use-package evil-commentary
    :config
    (global-evil-commentary-mode 1))

  :config
  (setq evil-vsplit-window-right t)

  (load "~/.emacs.d/conf/evil/mappings-generic.el")

  ;; Comfy eval

  (defun comfy-eval-x ()
    (interactive)
    (backward-up-list)
    (evil-jump-item)
    (call-interactively 'eval-last-sexp))

  (add-hook 'emacs-lisp-mode-hook
            '(lambda ()
	       (define-key evil-normal-state-map (kbd "X") 'comfy-eval-x)
               (define-key evil-normal-state-map (kbd ";x") 'eval-defun)))

  ;; ---------------
  ;; File bookmarks
  ;; ---------------

  (load "~/.emacs.d/conf/evil/file-bookmarks.el")

  ;; ----------------
  ;; Plugin mappings
  ;; ----------------

  (load "~/.emacs.d/conf/selectrum/mappings.el"))

;;; --------
;;; Snippets
;;; --------

(use-package yasnippet
  :init
  (yas-global-mode 1)
  (define-key evil-normal-state-map (kbd ";u") 'yas-new-snippet)
  (define-key evil-normal-state-map (kbd ";U") 'yas-visit-snippet-file))

;;; ---------
;;; Auto-pair
;;; ---------

(electric-pair-mode 1)
; Doesn't work
; (setq electric-pair-pairs
;       '(
;         (?\" . ?\")
;         (?\{ . ?\})
;         (?\[ . ?]})))

;;; ------
;;; Parens
;;; ------

(use-package paredit
  :init
  
  (use-package paredit-everywhere
    :init
    (add-hook 'prog-mode-hook 'paredit-everywhere-mode)))

;; (straight-use-package 'lispy)
;; (add-hook 'emacs-lisp-mode-hook (lambda () (lispy-mode 1)))

;; (straight-use-package 'lispyville)
;; (add-hook 'lispy-mode-hook #'lispyville-mode)

;;; ---------
;;; Languages
;;; ---------

(use-package slime)

;; -----
;; Elisp
;; -----

;; Navigate emacs sources
(use-package elisp-slime-nav
  :init
  (dolist (hook '(emacs-lisp-mode-hook ielm-mode-hook))
    (add-hook hook 'turn-on-elisp-slime-nav-mode))

  (setq source-directory "~/.ghq/github.com/emacs-mirror/emacs"))

(global-set-key (kbd "C-h C-f") 'find-function)

(use-package bug-hunter)

;; TODO apropox-follow on word under cursor


;; -------
;; Clojure
;; -------

(use-package cider)

;; ------
;; Factor
;; ------

(use-package fuel
  :init
  (setq fuel-factor-root-dir "/usr/lib/factor"))

;; ------
;; Forth
;; ------

(use-package forth-mode)

;;; --------
;;; Behavior
;;; --------

(setq vc-follow-symlinks t)

;; TODO infinite undo like vim
(setq backup-by-copying t               ; don't clobber symlinks
      backup-directory-alist
      '(("." . "~/.emacs-temp"))        ; don't litter my fs tree
      delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      version-control t)                ; use versioned backups

;; Always open new window
(setq split-width-threshold 80)

;; Recent files
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;;; ------
;;; Server
;;; ------

(server-start)

;;; ------
;;; Themes
;;; ------

(load "~/.emacs.d/layers/colors.el")
