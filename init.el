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

;;; ==== ;;;
;;; Keys ;;;
;;; ==== ;;;

(load "~/.emacs.d/keys/top.el")

;;; ====== ;;;
;;; Server ;;;
;;; ====== ;;;

(server-start)


;;; Mon Jan 10 11:57:01 UTC 2022 ;;; 

;;; New shit / windowing

;;; nnoremap <Space><C-o> <Space>`

(use-package exwm)

(require 'exwm)
(require 'exwm-config)
(exwm-config-example)
