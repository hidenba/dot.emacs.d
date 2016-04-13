(bind-key "C-h" 'delete-backward-char)
(bind-key "M-?" 'help-for-help)
(bind-key "C-z" 'undo)
(bind-key "C-c i" 'indent-region)
(bind-key "C-c C-i" 'dabbrev-expand)
(bind-key "C-c ;" 'comment-region)
(bind-key "C-c :" 'uncomment-region)
(bind-key "C-m" 'newline-and-indent)
(bind-key "C-x SPC" 'cua-set-rectangle-mark)


;; 画面分割
(bind-key "C-t" 'follow-delete-other-windows-and-split)

;; recentf
(bind-key "C-c C-e" 'recentf-open-files)

;; find-functionにキー割り当て
(find-function-setup-keys)
