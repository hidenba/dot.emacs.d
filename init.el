;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'cask "/usr/local/opt/cask/cask.el")
(cask-initialize)
(use-package "pallet")
(pallet-mode t)

(init-loader-load "~/.emacs.d/inits")
(server-start)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (helm-ghq fish-mode yasnippet yaml-mode wgrep-ag web-mode use-package toml-mode toml smex smartparens sass-mode ruby-tools ruby-refactor ruby-hash-syntax ruby-end ruby-electric ruby-dev ruby-compilation ruby-block rspec-mode robe resize-window recentf-ext rbenv quickrun projectile-rails prodigy popwin pallet open-junk-file nyan-mode navi2ch multiple-cursors magit-gh-pulls magit-gerrit mag-menu js2-mode init-loader idle-highlight-mode htmlize helm-rubygems-local helm-package helm-open-github helm-migemo helm-ls-git helm-git-grep helm-git helm-company helm-bundle-show helm-ag google-translate geeknote flymake-rust flycheck-rust flycheck-cask feature-mode expand-region exec-path-from-shell drag-stuff company-irony-c-headers company-irony company-inf-ruby cargo bundler auto-compile ag ace-isearch))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
