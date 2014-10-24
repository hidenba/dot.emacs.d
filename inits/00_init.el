;;info
(require 'info)
(add-to-list 'Info-additional-directory-list "~/.emacs.d/info")

(require 'open-junk-file)
(global-set-key (kbd "C-x C-a") 'open-junk-file)

(setq eldoc-idle-delay 0.2)
(setq eldoc-minor0mode-string "")
(global-set-key "\C-m" 'newline-and-indent)

(show-paren-mode 1)
(setq backup-inhibited t)
(setq delete-auto-save-files t)
(setq completion-ignore-case t)
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

;; beep音
(setq visible-bell t)

;; ;; クリップボード監視
;; (require 'clipboard-to-kill-ring)
;; (clipboard-to-kill-ring t)

; http://blog.lathi.net/articles/2007/11/07/sharing-the-mac-clipboard-with-emacs
(defun copy-from-osx ()
   (shell-command-to-string "pbpaste"))

(defun paste-to-osx (text &optional push)
   (let ((process-connection-type nil))
          (let ((proc (start-process "pbcopy" "*Messages*" "pbcopy")))
                   (process-send-string proc text)
                          (process-send-eof proc))))

(setq interprogram-cut-function 'paste-to-osx)
(setq interprogram-paste-function 'copy-from-osx)

(cua-mode t)
(setq cua-enable-cua-keys nil)

(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)

(require 'wdired)
(define-key dired-mode-map "r" 'wdired-change-to-wdired-mode)
