(add-to-list 'auto-mode-alist '("\\.jsx\\'" . js2-jsx-mode))
;; (flycheck-add-mode 'javascript-eslint 'js2-jsx-mode)
;; (add-hook 'js2-jsx-mode-hook 'flycheck-mode)
(add-hook 'js2-jsx-mode-hook (lambda () (setq js2-basic-offset 2)))
