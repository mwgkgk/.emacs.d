;;; Fri Apr  2 11:11:06 UTC 2021 ;;; 

;;; UNFINISHED

;;;###autoload
(defun ffap-silent ()
  (interactive)

  ;; ffap-file-at-point is non-iteractive and returns a filename.
  (let ((filename ffap-file-at-point))
    (if filename
        ;; TODO if exists, go there immediately
        nil

        ;; Otherwise open find-file-at-point and let it handle the problem.
        ;; TODO This calls ffap-file-at-point another time.
        (find-file-at-point))))

