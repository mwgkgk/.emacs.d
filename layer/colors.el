;;; Sat Apr  3 09:28:23 UTC 2021 ;;; 

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("9a9b10b0a409cf8816ca53428c0f87179a0a01edf2d334f85d71b4e9381bba80" "9b39b25c3a23b1be6e99a3648b91ebaf2a7efdde236e3472aa95f1708ec61d4f" "efd849c804148b88536914ccdee08285fd7376e2e3334522c9afc00fd7e594da" "94146ac747852749e9444b184eb1e958f0e546072f66743929a05c3af62de473" default)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;; Dark
(use-package soothe-theme)
(use-package django-theme)

;;; Light
(use-package autumn-light-theme)
(use-package goose-theme)
(use-package hydandata-light-theme)

(load-theme 'goose t)
