;;auto-install
(require 'auto-install)
(setq auto-install-directory "~/.emacs.d/elisp/")
(add-to-list 'load-path auto-install-directory)
(auto-install-update-emacswiki-package-name t)
(auto-install-compatibility-setup)
(setq ediff-window-setup-function 'ediff-setup-window-plain)