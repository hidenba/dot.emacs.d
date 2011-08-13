(require 'anything-startup)
(define-key anything-map (kbd "C-p") 'anything-previous-line)
(define-key anything-map (kbd "C-n") 'anything-next-line)
(define-key anything-map (kbd "C-v") 'anything-next-source)
(define-key anything-map (kbd "M-v") 'anything-previous-source)
(global-set-key (kbd "C-:") 'anything)
(global-set-key (kbd "C-x b") 'anything-filelist+)
(global-set-key (kbd "M-y") 'anything-show-kill-ring)
(global-set-key (kbd "M-g s") 'anything-google-suggest)

(setq anything-c-filelist-file-name "/tmp/all.filelist")
(setq anything-c-filelist-file-name "~/partial.filelist")
(setq anything-grep-candidates-fast-directory-regexp "^/tmp")

(require 'anything-c-moccur)
(setq moccur-split-word t)
(global-set-key (kbd "M-s") 'anything-c-moccur-occur-by-moccur)

(require 'anything-rcodetools)
(setq rct-get-all-methods-command "PAGER=cat fri -l")
;; See docs
(define-key anything-map [(control ?;)] 'anything-execute-persistent-action)

(require 'anything-rdefs)
(setq ar:command "/usr/local/bin/rdefs.rb")
(add-hook 'ruby-mode-hook
  (lambda ()
    (define-key ruby-mode-map (kbd "C-@") 'anything-rdefs)))

(require 'anything-rurima)
(setq anything-rurima-index-file "~/Documents/rurema/rubydoc/rurima.e")
(global-set-key (kbd "C-c C-r") 'anything-rurima)
(global-set-key (kbd "C-c C-p") 'anything-rurima-at-point)


;;; anything-complete.el replaces various completion with anything
;;; (like Icicles). Use Anything power for normal completion.
;; (when (require 'anything-complete nil t)
;;   ;; Automatically collect symbols by 150 secs
;;   (anything-lisp-complete-symbol-set-timer 150)
;;   (define-key emacs-lisp-mode-map "\C-\M-i" 'anything-lisp-complete-symbol-partial-match)
;;   (define-key lisp-interaction-mode-map "\C-\M-i" 'anything-lisp-complete-symbol-partial-match)
;;   ;; Comment if you do not want to replace completion commands with `anything'.
;;   (anything-read-string-mode 1)
;;   )
;;(anything-read-string-mode 0)

