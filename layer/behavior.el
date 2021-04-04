(setq vc-follow-symlinks t)

;; TODO infinite undo like vim
(setq backup-by-copying t               ; don't clobber symlinks
      backup-directory-alist
      '(("." . "~/.emacs-temp"))        ; don't litter my fs tree
      delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      version-control t)                ; use versioned backups

;; Recent files
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;;; ======= ;;;
;;; Windows ;;;
;;; ======= ;;;

;; Always open new window
(setq split-width-threshold 80)

;; Winner mode
(progn
  (winner-mode 1))

;;; ======== ;;;
;;; Sessions ;;;
;;; ======== ;;;

(desktop-save-mode 1)
