
;;; Sun Apr  4 03:23:37 UTC 2021 ;;; 

(load "~/.emacs.d/rc/evil/api/comfy-eval.el")

(add-hook 'emacs-lisp-mode-hook
    '(lambda ()
       (define-key evil-normal-state-map (kbd "X") 'rc/evil/i:comfy-eval-x)
       (define-key evil-normal-state-map (kbd ";x") 'eval-defun)))

