;; Rinari
(add-to-list 'load-path "~/.emacs.d/elisp/rinari")
(require 'rinari)
(require 'ruby-compilation-rspec)

;; haml & sass
(add-to-list 'load-path "~/.emacs.d/elisp/haml-mode")
(add-to-list 'load-path "~/.emacs.d/elisp/sass-mode")
(require 'haml-mode nil 't)
(add-to-list 'auto-mode-alist '("\\.haml$" . haml-mode))
(require 'sass-mode nil 't)
(add-to-list 'auto-mode-alist '("\\.haml$" . sass-mode))

(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
