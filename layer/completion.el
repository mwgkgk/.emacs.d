(use-package company
  :defer 3
  :config
  (setq company-show-numbers t)
  (setq company-dabbrev-ignore-case nil)
  (setq company-dabbrev-downcase nil)
  (setq company-tooltip-align-annotations t)

  (global-company-mode +1))

(use-package company-prescient
             :demand t
             :after company
             :config
             (company-prescient-mode +1))

