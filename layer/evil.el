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
  (setq evil-vsplit-window-right t)

  (load "~/.emacs.d/conf/evil/mappings-generic.el")

  ;; -----------
  ;; Comfy eval
  ;; -----------

  (defun comfy-eval-x ()
    (interactive)
    (backward-up-list)
    (evil-jump-item)
    (call-interactively 'eval-last-sexp))

  (add-hook 'emacs-lisp-mode-hook
            '(lambda ()
	       (define-key evil-normal-state-map (kbd "X") 'comfy-eval-x)
               (define-key evil-normal-state-map (kbd ";x") 'eval-defun)))

  ;; ------------
  ;; Leader Keys
  ;; ------------

  ;; C-w hotkeys
  ; (load "~/.emacs.d/layer/c-w.el")
  ;; Space hotkeys
  (load "~/.emacs.d/layer/space.el")

  ;; ---------------
  ;; File bookmarks
  ;; ---------------

  (load "~/.emacs.d/conf/evil/file-bookmarks.el")

  ;; -------------
  ;; Toggle theme
  ;; -------------

  (load "~/.emacs.d/layer/toggle-theme.el")

  ;; ----------------
  ;; Plugin mappings
  ;; ----------------

  (load "~/.emacs.d/conf/selectrum/mappings.el"))
