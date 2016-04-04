;; Rinari
(require 'rinari)
(global-rinari-mode)
(setq rinari-tags-file-name "TAGS")

;; haml & sass
(require 'haml-mode nil 't)
(add-to-list 'auto-mode-alist '("\\.haml$" . haml-mode))
(require 'sass-mode nil 't)
(add-to-list 'auto-mode-alist '("\\.sass$" . sass-mode))

(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

;; (add-hook 'ruby-mode-hook
;;           '(lambda ()
;;              (define-key ruby-mode-map "\C-c,t" 'rinari-find-rspec)
;;            ))
