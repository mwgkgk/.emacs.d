(use-package yasnippet
  :init
  (yas-global-mode 1)
  (define-key evil-normal-state-map (kbd ";u") 'yas-new-snippet)
  (define-key evil-normal-state-map (kbd ";U") 'yas-visit-snippet-file))
