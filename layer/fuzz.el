(load "~/.emacs.d/conf/selectrum/setup.el")

(use-package fzf
  :init
  (define-key evil-normal-state-map (kbd "se") 'fzf))
