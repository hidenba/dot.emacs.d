(use-package "migemo")
(setq migemo-command "cmigemo")
(setq migemo-options '("-q" "--emacs"))

;; Set your installed path
(setq migemo-dictionary "/usr/local/Cellar/cmigemo/20110227/share/migemo/utf-8/migemo-dict")

(setq migemo-user-dictionary nil)
(setq migemo-regex-dictionary nil)
(setq migemo-coding-system 'utf-8-unix)
(load-library "migemo")
(migemo-init)
