;;; Sun Apr  4 00:24:39 UTC 2021 ;;;

;;; Don't "Key sequence starts with non-prefix key" me:
(define-key evil-normal-state-map (kbd "s") nil)

;;; Sat Apr  3 23:51:33 UTC 2021 ;;;

(define-key evil-normal-state-map (kbd "s SPC") 'switch-to-buffer)

;;; Fri Mar 19 04:44:25 UTC 2021 ;;; 

;;; Goes to project root by default
(define-key evil-normal-state-map (kbd "s s") 'fzf)

;;; Sun Apr  4 00:28:08 UTC 2021 ;;;

(define-key evil-normal-state-map (kbd "se") '(lambda () (interactive) (find-file ".")))
