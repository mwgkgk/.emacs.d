;;; ======= ;;;
;;; Startup ;;;
;;; ======= ;;;

(setq inhibit-startup-message t
      inhibit-splash-screen t)

;;; ======== ;;;
;;; Toolbars ;;;
;;; ======== ;;;

(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

;;; ===== ;;;
;;; Fonts ;;;
;;; ===== ;;;

;; (set-face-attribute 'default nil :font "Iosevka SS04" :height 75)
;; (set-face-attribute 'default nil :font "Hack" :height 77)
;; (set-face-attribute 'default nil :font "Anka/Coder" :height 150)
(set-face-attribute 'default nil :font "Anka/Coder Narrow" :height 95)
;; (set-face-attribute 'default nil :font "scientifica")
;; (set-face-attribute 'default nil :font "Monospace" :height 150)

;;; ======== ;;;
;;; Linenums ;;;
;;; ======== ;;;

;; TODO add nlinum-relative and hook to evil mode switch
(global-display-line-numbers-mode)

;;; ========== ;;;
;;; Whitespace ;;;
;;; ========== ;;;

(setq whitespace-style '(trailing tabs newline tab-mark newline-mark))

;;; ========= ;;;
;;; Auto-pair ;;;
;;; ========= ;;;

(electric-pair-mode 1)
; Doesn't work
; (setq electric-pair-pairs
;       '(
;         (?\" . ?\")
;         (?\{ . ?\})
;         (?\[ . ?]})))
