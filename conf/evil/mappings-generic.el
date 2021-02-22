;;; Mon Feb 22 00:33:34 UTC 2021 ;;; 

;; TODO fix SPC for dired, apropos
(define-key evil-normal-state-map (kbd "SPC") 'evil-window-map)
(define-key evil-window-map (kbd "w") 'evil-write)
(define-key evil-window-map (kbd "Q") 'evil-quit-all)
(define-key evil-window-map (kbd "N") 'evil-window-vnew)
(define-key evil-window-map (kbd "a") 'evil-switch-to-windows-last-buffer)


;; TODO normal-mode s is non-prefix
;; (define-key evil-normal-state-map (kbd "s SPC") 'switch-to-buffer)

(define-key evil-normal-state-map (kbd "q") 'evil-jump-item)
;; Emacs'es join-line is joining "Up" when it feels like it.
(define-key evil-normal-state-map (kbd "K") 'join-line)
