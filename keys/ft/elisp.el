(add-hook 'emacs-lisp-mode-hook
    '(lambda ()
       (define-key evil-normal-state-map (kbd "X") 'lib/evil/i:comfy-eval-x)
       (define-key evil-normal-state-map (kbd ";x") 'eval-defun)))

