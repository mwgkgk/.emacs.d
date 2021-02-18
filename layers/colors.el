(setq current-theme 'tango-dark)

(load-theme current-theme t)

(defun toggle-theme ()
  (interactive)
  (if (equal current-theme 'dichromacy)
    (progn (setq current-theme 'tango-dark)
           (load-theme current-theme t))
    (progn (setq current-theme 'dichromacy)
           (load-theme current-theme t))))

(define-key evil-normal-state-map (kbd ";bg") 'toggle-theme)
