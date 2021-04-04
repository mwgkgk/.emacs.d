;;; Sat Apr  3 22:54:29 UTC 2021 ;;; 

(defun lib/evil/i:comfy-eval-x ()
  (interactive)
  ;; TODO doesn't work on first bracket
  (backward-up-list)
  (evil-jump-item)
  (call-interactively 'eval-last-sexp))
