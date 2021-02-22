(use-package selectrum
             :init
             (selectrum-mode 1))

;; (use-package orderless
;;   :ensure t
;;   :custom (completion-styles '(orderless)))

;; Package `prescient' is a library for intelligent sorting and
;; filtering in various contexts.
(use-package prescient
  :config

  ;; Remember usage statistics across Emacs sessions
  (prescient-persist-mode 1))

(use-package selectrum-prescient
             :after selectrum
             :config
             (selectrum-prescient-mode 1))
