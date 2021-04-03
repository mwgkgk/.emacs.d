;;; Fri Apr  2 10:51:56 UTC 2021 ;;; 

(use-package sly
  :init
  (setq inferior-lisp-program "/usr/bin/sbcl")

  :config
  (add-hook 'sly-mode-hook
               (lambda ()
                 (unless (sly-connected-p)
                   (save-excursion (sly))))))

