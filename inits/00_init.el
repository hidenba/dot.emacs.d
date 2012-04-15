;;info
(require 'info)
(add-to-list 'Info-additional-directory-list "~/.emacs.d/info")

(require 'open-junk-file)
(global-set-key (kbd "C-x C-z") 'open-junk-file)

(require 'lispxmp)
(define-key emacs-lisp-mode-map (kbd "C-c C-d") 'lispxmp)

(require 'paredit)
(add-hook 'emacs-lisp-mode-hook 'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook 'enable-paredit-mode)
(add-hook 'lisp-mode-hook 'enable-paredit-mode)
(add-hook 'ielm-mode-hook 'enable-paredit-mode)

(setq eldoc-idle-delay 0.2)
(setq eldoc-minor0mode-string "")
(global-set-key "\C-m" 'newline-and-indent)

(show-paren-mode 1)
(setq backup-inhibited t)
(setq delete-auto-save-files t)
(setq completion-ignore-case t)
(partial-completion-mode 1)
(icomplete-mode 1)

;; タブ設定
(setq-default indent-tabs-mode nil)
;; 履歴の保存
(savehist-mode 1)
(setq history-length 1000)
;; カーソル位置の記憶
(setq-default save-place t)
(require 'saveplace)
;; GCの設定
(setq gc-cons-threshold (* 50 gc-cons-threshold))
;; ミニバッファの再帰的呼出
(setq enable-recursive-minibuffers t)
;; キーストロークを素早く表示
(setq echo-keystrokes 0.1)
;; yesじゃなくてyで大丈夫にする
(defalias 'yes-or-no-p 'y-or-n-p)

;; バッファ名をユニークニする
(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)
(setq uniquify-ignore-buffers-re "*[^*]+*")

;; デバッグ
(setq debug-on-error t)

;; 行末空白の自動削除
(add-hook 'before-save-hook 'delete-trailing-whitespace)