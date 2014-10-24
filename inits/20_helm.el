(require 'helm-config)
(require 'helm-ls-git)
(require 'helm-descbinds)

(helm-descbinds-install)
(helm-mode 1)

(global-set-key (kbd "C-c h") 'helm-mini)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "M-s") 'helm-occur)
(global-set-key (kbd "C-x b") 'helm-for-files)
(global-set-key (kbd "C-]") 'helm-ls-git-ls)
(global-set-key (kbd "C-c g") 'helm-git-grep)


;; (add-to-list 'descbinds-helm-source-template '(candidate-number-limit . 9999))
