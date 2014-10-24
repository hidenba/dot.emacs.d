(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(require 'cl)

(defvar installing-package-list
  '(
    helm
    helm-rubygems-local
    helm-descbinds
    helm-rails
    helm-rb
    helm-ls-git
    init-loader
    helm-flymake
    auto-async-byte-compile
    color-theme
    color-theme-solarized
    open-junk-file
    saveplace
    auto-complete
    recentf-ext
    yasnippet
    coffee-mode
    color-moccur
    ruby-mode
    ruby-electric
    mode-compile
    ruby-block
    feature-mode
    haml-mode
    css-mode
    yaml-mode
    sass-mode
    flymake
    flymake-easy
    flymake-ruby
    flymake-coffee
    markdown-mode
    tramp
    rinari
    ruby-compilation
    ruby-hash-syntax
    ;; rspec-mode
    ))

(let ((not-installed (loop for x in installing-package-list
			   when (not (package-installed-p x))
			   collect x)))
  (when not-installed
    (package-refresh-contents)
    (dolist (pkg not-installed)
      (package-install pkg))))

(init-loader-load "~/.emacs.d/inits")

(server-start)

;; (require 'color-theme)
;; (color-theme-solarized-dark)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
'(ruby-insert-encoding-magic-comment nil)
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(helm-match ((t (:inherit match :foreground "brightyellow"))))
 '(helm-selection ((t (:background "green" :foreground "brightwhite" :underline t)))))
