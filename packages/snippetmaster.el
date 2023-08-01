;;; TODO change yas-expand key to this wrapper

(defun death-by-snip-snip ()
  "Heuristics for tab expansion."
  (interactive)
  (let ((word (thing-at-point 'symbol t))
	(bounds (bounds-of-thing-at-point 'symbol)))
    (cond
     ;;; Instead of this, a propper context-aware snippet engine
     ((member word (yas-active-keys)) (yas-expand))
     ;;; Instead of this, N fallback heuristics
     (t (progn
	  (delete-region (car bounds) (cdr bounds))
	  (insert (format "(%s)" word)))))))

(define-key evil-insert-state-map (kbd "C-c e") #'death-by-snip-snip)
