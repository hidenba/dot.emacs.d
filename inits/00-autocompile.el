(setq load-prefer-newer t)
(package-initialize)

(use-package "auto-compile")
(auto-compile-on-load-mode)
(auto-compile-on-save-mode)
