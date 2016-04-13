(require 'cask "/usr/local/opt/cask/cask.el")
(cask-initialize)
(use-package "pallet")
(pallet-mode t)

(init-loader-load "~/.emacs.d/inits")

(server-start)
