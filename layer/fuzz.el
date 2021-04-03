(load "~/.emacs.d/conf/selectrum/setup.el")

(use-package fzf
  :init
  ;; TODO move this to prefix s
  (define-key evil-normal-state-map (kbd "SPC E") 'fzf))
