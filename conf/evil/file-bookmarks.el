;;; Sun Feb 21 04:23:00 UTC 2021 ;;; 

(define-key evil-normal-state-map (kbd ";cvh")
  (lambda () (interactive) (find-file "~/.emacs.d/init.el")))

;;; Mon Feb 22 00:35:19 UTC 2021 ;;; 

(define-key evil-normal-state-map (kbd ";cvk")
  (lambda ()
    (interactive)
    (find-file "~/.emacs.d/conf/evil/mappings-generic.el")))


(define-key evil-normal-state-map (kbd ";cvfb")
  (lambda ()
    (interactive)
    (find-file "~/.emacs.d/conf/evil/file-bookmarks.el")))

;;; Fri Apr  2 11:07:07 UTC 2021 ;;; 

(define-key evil-normal-state-map (kbd ";ctl")
  (lambda ()
    (interactive)
    (find-file "~/.emacs.d/layer/lang/elisp.el")))
