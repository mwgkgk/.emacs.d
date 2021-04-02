;; Navigate emacs sources
(use-package elisp-slime-nav
  :init
  (dolist (hook '(emacs-lisp-mode-hook ielm-mode-hook))
    (add-hook hook 'turn-on-elisp-slime-nav-mode))

  (setq source-directory "~/.ghq/github.com/emacs-mirror/emacs"))

(global-set-key (kbd "C-h C-f") 'find-function)

(use-package bug-hunter)

;; TODO apropox-follow on word under cursor

