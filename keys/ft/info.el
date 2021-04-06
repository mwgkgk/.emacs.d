;;; Tue Apr  6 10:03:42 UTC 2021 ;;; 

;;; evil-forward-word doesn't work
(evil-define-key 'normal Info-mode-map (kbd "w") #'forward-word)
(evil-define-key 'normal Info-mode-map (kbd "b") #'backward-word)

;;; evil-forward-end-word doesn't work derp
(evil-define-key 'normal Info-mode-map (kbd "e") #'forward-word)
