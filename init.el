;;; ==== ;;;
;;; Date ;;;
;;; ==== ;;;

(setenv "TZ" "UTC0")

;;; ===== ;;;
;;; Debug ;;;
;;; ===== ;;;

(setq debug-on-error t)

;;; ========= ;;;
;;; Interface ;;;
;;; ========= ;;;

;; Setting this section early in the file is intentional, to have
;; interface modifications applied early.
(load "~/.emacs.d/layer/interface.el")
(load "~/.emacs.d/layer/behavior.el")

;;; ========= ;;;
;;; Packaging ;;;
;;; ========= ;;;

(load "~/.emacs.d/layer/packaging.el")

;;; ======== ;;;
;;; Packages ;;;
;;; ======== ;;;

(load "~/.emacs.d/layer/packages.el")

;;; ====== ;;;
;;; Server ;;;
;;; ====== ;;;

(server-start)

