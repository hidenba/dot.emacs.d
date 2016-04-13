(use-package "helm")
(use-package "helm-config")

(bind-key "M-x" 'helm-M-x)
(bind-key "C-c h" 'helm-mini)
(bind-key "C-x C-f" 'helm-find-files)
(bind-key "M-y" 'helm-show-kill-ring)
(bind-key "M-s" 'helm-occur)
(bind-key "C-x b" 'helm-for-files)
(bind-key "C-]" 'helm-ls-git-ls)
(bind-key "C-c g" 'helm-git-grep)
(bind-key "C-h" 'delete-backward-char helm-map)
(bind-key "TAB" 'helm-execute-persistent-action helm-map)

;; Emulate `kill-line' in helm minibuffer
(setq helm-delete-minibuffer-contents-from-point t)
(defadvice helm-delete-minibuffer-contents (before helm-emulate-kill-line activate)
  "Emulate `kill-line' in helm minibuffer"
  (kill-new (buffer-substring (point) (field-end))))

(defadvice helm-ff-kill-or-find-buffer-fname (around execute-only-if-exist activate)
  "Execute command only if CANDIDATE exists"
  (when (file-exists-p candidate)
    ad-do-it))

(use-package "helm-migemo")
;;; この修正が必要
(with-eval-after-load "helm-migemo"
  (defun helm-compile-source--candidates-in-buffer (source)
    (helm-aif (assoc 'candidates-in-buffer source)
        (append source
                `((candidates
                   . ,(or (cdr it)
                          (lambda ()
                            ;; Do not use `source' because other plugins
                            ;; (such as helm-migemo) may change it
                            (helm-candidates-in-buffer (helm-get-current-source)))))
                  (volatile) (match identity)))
      source))
  ;; [2015-09-06 Sun]helm-match-plugin -> helm-multi-match変更の煽りを受けて
  (defalias 'helm-mp-3-get-patterns 'helm-mm-3-get-patterns)
  (defalias 'helm-mp-3-search-base 'helm-mm-3-search-base))


(helm-migemo-mode 1)
