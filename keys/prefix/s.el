;;; Tue Apr  6 08:39:14 UTC 2021 ;;; 

;;; Is required for the fzf/start binds:
;;; TODO This doesn't actually work
(autoload-do-load #'fzf)

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
  #'(lambda () (interactive) (fzf/start default-directory #'fzf/action-find-file)))

;;; Sun Apr  4 04:35:51 UTC 2021 ;;; 

(define-key evil-normal-state-map (kbd "sd")
  #'(lambda () (interactive) (fzf/start "~/.emacs.d/" #'fzf/action-find-file)))
(define-key evil-normal-state-map (kbd "sck")
  #'(lambda () (interactive) (fzf/start "~/.emacs.d/keys/" #'fzf/action-find-file)))
(define-key evil-normal-state-map (kbd "scu")
  #'(lambda () (interactive) (fzf/start "~/.emacs.d/snippets/" #'fzf/action-find-file)))
(define-key evil-normal-state-map (kbd "sca")
  #'(lambda () (interactive) (fzf/start "~/.emacs.d/api/" #'fzf/action-find-file)))
(define-key evil-normal-state-map (kbd "scr")
  #'(lambda () (interactive) (fzf/start "~/.emacs.d/layer/" #'fzf/action-find-file)))
(define-key evil-normal-state-map (kbd "scl")
  #'(lambda () (interactive) (fzf/start "~/.emacs.d/lib/" #'fzf/action-find-file)))
(define-key evil-normal-state-map (kbd "scp")
  #'(lambda () (interactive) (fzf/start "~/.emacs.d/straight/repos/" #'fzf/action-find-file)))

(define-key evil-normal-state-map (kbd "sD")
  #'(lambda () (interactive) (fzf/start "~/dot/" #'fzf/action-find-file)))

;;; Sun Apr  4 05:23:18 UTC 2021 ;;; 

(define-key evil-normal-state-map (kbd "sr")
  #'(lambda ()
      (interactive)
      (fzf/start (file-name-directory (directory-file-name default-directory)) #'fzf/action-find-file)))

;;; Sun Apr  4 06:04:33 UTC 2021 ;;; 

(define-key evil-normal-state-map (kbd "sol") #'load-theme)

;;; -----
;;; Home
;;; -----

;;; Mon Apr  5 02:26:47 UTC 2021 ;;; 

(define-key evil-normal-state-map (kbd "sx")
  #'(lambda () (interactive) (fzf/start "~/org/" #'fzf/action-find-file))))))

