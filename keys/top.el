;;; ============= ;;;
;;; Toplevel keys ;;;
;;; ============= ;;;

;;; Sun Apr  4 00:34:12 UTC 2021 ;;;

;;; TODO only do this in code buffers
(define-key evil-normal-state-map (kbd "q") 'evil-jump-item)

;;; Emacs'es join-line is joining "Up" when it feels like it.
(define-key evil-normal-state-map (kbd "K") 'join-line)
(define-key evil-visual-state-map (kbd "K") 'join-line)

;;; =========== ;;;
;;; Prefix keys ;;;
;;; =========== ;;;

;;; Sun Apr  4 00:56:40 UTC 2021 ;;;

; (load "~/.emacs.d/keys/prefix/c-w.el")
(load "~/.emacs.d/keys/prefix/space.el")
(load "~/.emacs.d/keys/prefix/leader.el")
(load "~/.emacs.d/keys/prefix/leader-c.el")
(load "~/.emacs.d/keys/prefix/s.el")
(load "~/.emacs.d/keys/prefix/c-h.el")

;;; ============= ;;;
;;; Filetype keys ;;;
;;; ============= ;;;

;;; Sun Apr  4 02:01:35 UTC 2021 ;;;

(load "~/.emacs.d/keys/ft/elisp.el")
(load "~/.emacs.d/keys/ft/info.el")

