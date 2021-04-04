;;; Sun Apr  4 00:32:23 UTC 2021 ;;;

(define-key evil-normal-state-map (kbd "SPC") 'evil-window-map)

;;; TODO split c-w and SPC cleanly
(define-key evil-window-map (kbd "w") 'evil-write)
(define-key evil-window-map (kbd "Q") 'evil-quit-all)
(define-key evil-window-map (kbd "N") 'evil-window-vnew)
(define-key evil-window-map (kbd "a") 'evil-switch-to-windows-last-buffer)
(define-key evil-window-map (kbd "e") 'find-file)

;;; TODO split the last buffer
(define-key evil-window-map (kbd "#") 'evil-window-new)
