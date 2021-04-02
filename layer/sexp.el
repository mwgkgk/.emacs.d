(use-package paredit
  :init
  
  (use-package paredit-everywhere
    :init
    (add-hook 'prog-mode-hook 'paredit-everywhere-mode)))

;; (straight-use-package 'lispy)
;; (add-hook 'emacs-lisp-mode-hook (lambda () (lispy-mode 1)))

;; (straight-use-package 'lispyville)
;; (add-hook 'lispy-mode-hook #'lispyville-mode)

