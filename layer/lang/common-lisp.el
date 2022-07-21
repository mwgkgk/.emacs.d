;;; Thu Jul 21 14:31:06 UTC 2022 ;;; 

(setq auto-mode-alist 
      (cons '("\\.cl$" . lisp-mode) auto-mode-alist))

;;; Fri Apr  2 10:51:56 UTC 2021 ;;; 

(use-package sly
  :init
  (if (eq system-type 'windows-nt)
      (setq inferior-lisp-program "sbcl.exe")
    (setq inferior-lisp-program "/usr/bin/sbcl"))
  
  :config
  (add-hook 'sly-mode-hook
	    (lambda ()
	      (unless (sly-connected-p)
		(save-excursion (sly))))))

