
;;; -------
;;; Config
;;; -------

;;; Sun Feb 21 04:23:00 UTC 2021 ;;; 

(define-key evil-normal-state-map (kbd ";cvh")
  #'(lambda ()
      (interactive)
      (find-file "~/.emacs.d/init.el")))

;;; Sat Apr  3 09:37:31 UTC 2021 ;;; 

(define-key evil-normal-state-map (kbd ";cvp")
  #'(lambda ()
      (interactive)
      (find-file "~/.emacs.d/layer/packages.el")))

;;; Sat Apr  3 22:27:03 UTC 2021 ;;; 

(define-key evil-normal-state-map (kbd ";cve")
  #'(lambda ()
      (interactive)
      (find-file "~/.emacs.d/layer/evil.el")))

;;; Sat Apr  3 09:26:47 UTC 2021 ;;; 

(define-key evil-normal-state-map (kbd ";cvc")
  #'(lambda ()
      (interactive)
      (find-file "~/.emacs.d/layer/colors.el")))

;;; -----
;;; Keys
;;; -----

;;; Sun Apr  4 05:58:15 UTC 2021 ;;; 

(define-key evil-normal-state-map (kbd ";cvk")
  #'(lambda ()
      (interactive)
      (find-file "~/.emacs.d/keys/top.el")))

;;; Mon Feb 22 00:35:19 UTC 2021 ;;; 

(define-key evil-normal-state-map (kbd ";ckt")
  #'(lambda ()
      (interactive)
      (find-file "~/.emacs.d/keys/top.el")))

(define-key evil-normal-state-map (kbd ";ckb")
  #'(lambda ()
      (interactive)
      (find-file "~/.emacs.d/keys/prefix/leader-c.el")))

;;; Sun Apr  4 07:35:05 UTC 2021 ;;; 

(define-key evil-normal-state-map (kbd ";cks")
  #'(lambda ()
      (interactive)
      (find-file "~/.emacs.d/keys/prefix/s.el")))

(define-key evil-normal-state-map (kbd ";ck SPC")
  #'(lambda ()
      (interactive)
      (find-file "~/.emacs.d/keys/prefix/s.el")))

(define-key evil-normal-state-map (kbd ";ck;")
  #'(lambda ()
      (interactive)
      (find-file "~/.emacs.d/keys/prefix/leader.el")))

;;; ----------
;;; Languages
;;; ----------

;;; Fri Apr  2 11:07:07 UTC 2021 ;;; 

(define-key evil-normal-state-map (kbd ";cle")
  #'(lambda ()
      (interactive)
      (find-file "~/.emacs.d/layer/lang/elisp.el")))

;;; Sun Apr  4 01:49:43 UTC 2021 ;;;

(define-key evil-normal-state-map (kbd ";clc")
  #'(lambda ()
      (interactive)
      (find-file "~/.emacs.d/layer/lang/common-lisp.el")))
