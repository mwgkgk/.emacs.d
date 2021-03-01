;;; Mon Feb 22 06:22:50 UTC 2021 ;;; 

(define-key evil-normal-state-map (kbd "s") nil)

;;; TODO (goto-file (fuzzy-select-from-a-list (directory-files "."))
(define-key evil-normal-state-map (kbd "se") '(lambda () (interactive) (find-file ".")))
