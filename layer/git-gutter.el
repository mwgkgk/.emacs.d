(use-package git-gutter
  :config
  ; (global-git-gutter-mode t)
  (define-key evil-normal-state-map (kbd ";hp") 'git-gutter:stage-hunk)
  (define-key evil-normal-state-map (kbd ";hu") 'git-gutter:revert-hunk)
  (define-key evil-normal-state-map (kbd ";h SPC") 'git-gutter:mark-hunk)
  (define-key evil-normal-state-map (kbd ";h C-w") 'git-gutter:popup-hunk)
  (define-key evil-normal-state-map (kbd "M-p") 'git-gutter:previous-hunk)
  (define-key evil-normal-state-map (kbd "M-n") 'git-gutter:next-hunk))
