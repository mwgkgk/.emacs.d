;;; Tue Apr  6 08:39:14 UTC 2021 ;;; 

(autoload-do-load #'fzf/start)

;;; Sun Apr  4 00:24:39 UTC 2021 ;;;

;;; Don't "Key sequence starts with non-prefix key" me:
(define-key evil-normal-state-map (kbd "s") nil)

;;; Sat Apr  3 23:51:33 UTC 2021 ;;;

(define-key evil-normal-state-map (kbd "s SPC") #'switch-to-buffer)

;;; Fri Mar 19 04:44:25 UTC 2021 ;;; 

;;; Goes to project root by default
;;; TODO this one is currently requires for the fzf/start to load for others
(define-key evil-normal-state-map (kbd "ss") #'fzf)

;;; Sun Apr  4 00:28:08 UTC 2021 ;;;

(define-key evil-normal-state-map (kbd "se")
  #'(lambda () (interactive) (fzf/start default-directory)))

;;; Sun Apr  4 04:35:51 UTC 2021 ;;; 

(define-key evil-normal-state-map (kbd "sd")
  #'(lambda () (interactive) (fzf/start "~/.emacs.d/")))
(define-key evil-normal-state-map (kbd "sck")
  #'(lambda () (interactive) (fzf/start "~/.emacs.d/keys/")))
(define-key evil-normal-state-map (kbd "scu")
  #'(lambda () (interactive) (fzf/start "~/.emacs.d/snippets/")))
(define-key evil-normal-state-map (kbd "sca")
  #'(lambda () (interactive) (fzf/start "~/.emacs.d/api/")))
(define-key evil-normal-state-map (kbd "scr")
  #'(lambda () (interactive) (fzf/start "~/.emacs.d/layer/")))
(define-key evil-normal-state-map (kbd "scl")
  #'(lambda () (interactive) (fzf/start "~/.emacs.d/lib/")))
(define-key evil-normal-state-map (kbd "scp")
  #'(lambda () (interactive) (fzf/start "~/.emacs.d/straight/repos/")))

(define-key evil-normal-state-map (kbd "sD")
  #'(lambda () (interactive) (fzf/start "~/dot/")))

;;; Sun Apr  4 05:23:18 UTC 2021 ;;; 

(define-key evil-normal-state-map (kbd "sr")
  #'(lambda ()
      (interactive)
      (fzf/start (file-name-directory (directory-file-name default-directory)))))

;;; Sun Apr  4 06:04:33 UTC 2021 ;;; 

(define-key evil-normal-state-map (kbd "sol") #'load-theme)

;;; -----
;;; Home
;;; -----

;;; Mon Apr  5 02:26:47 UTC 2021 ;;; 

(define-key evil-normal-state-map (kbd "sx")
  #'(lambda () (interactive) (fzf/start "~/org/")))

