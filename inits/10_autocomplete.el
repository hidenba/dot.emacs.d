;;auto-complete
(defun load-auto-complete ()
  (require 'auto-complete-config)
  (ac-config-default)

  (add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")

  (setq ac-use-menu-map t)
  (define-key ac-menu-map "\C-n" 'ac-next)
  (define-key ac-menu-map "\C-p" 'ac-previous)

  (setq ac-use-quick-help nil)
  (setq ac-ignore-case t)

  (setq ac-auto-show-menu 0.5)
  (setq ac-menu-height 20)

  (robe-mode))
