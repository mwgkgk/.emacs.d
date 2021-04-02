;;; Fri Apr  2 10:55:32 UTC 2021 ;;; 

;; -----
;; Evil
;; -----

;;; Evil goes before the others because of define-key.
(load "~/.emacs.d/layer/evil.el")

;; ----
;; BCI
;; ----

(load "~/.emacs.d/layer/fuzz.el")
(load "~/.emacs.d/layer/completion.el")
(load "~/.emacs.d/layer/snippets.el")

;; ----
;; Git
;; ----

(load "~/.emacs.d/layer/git-gutter.el")

;; -------
;; S-exps
;; -------

(load "~/.emacs.d/layer/sexp.el")

;; ---------
;; Languages
;; ---------

(load "~/.emacs.d/layer/lang/elisp.el")
(load "~/.emacs.d/layer/lang/common-lisp.el")
(load "~/.emacs.d/layer/lang/clojure.el")
(load "~/.emacs.d/layer/lang/factor.el")
(load "~/.emacs.d/layer/lang/forth.el")
(load "~/.emacs.d/layer/lang/lua.el")

;; -------
;; Colors
;; -------

; (use-package palette)
