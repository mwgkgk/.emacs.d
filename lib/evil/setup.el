;;; Fri Apr  2 09:45:59 UTC 2021 ;;; 

(use-package evil
  :init
  (setq evil-disable-insert-state-bindings t)
  (setq evil-motion-state-modes nil)

  (use-package evil-surround
    :config
    (global-evil-surround-mode 1))
  (use-package evil-commentary
    :config
    (global-evil-commentary-mode 1))

  (evil-mode 1)

  :config
  (setq evil-vsplit-window-right t))
