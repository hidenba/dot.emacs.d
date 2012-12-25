(add-to-list 'load-path "~/.emacs.d/elisp/ruby")

;; Setting rbenv path
(setenv "PATH" (concat (getenv "HOME") "/.rbenv/shims:" (getenv "HOME") "/.rbenv/bin:" (getenv "PATH")))
(setq exec-path (cons (concat (getenv "HOME") "/.rbenv/shims") (cons (concat (getenv "HOME") "/.rbenv/bin") exec-path)))

(autoload 'ruby-mode "ruby-mode" "Major mode for ruby files" t)
(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(add-to-list 'interpreter-mode-alist '("ruby" . ruby-mode))

(require 'ruby-electric)
(add-hook 'ruby-mode-hook '(lambda () (ruby-electric-mode t)))

(require 'rcodetools)
(setq rct-find-tag-if-available nil)
(defun ruby-mode-hook-rcodetools ()
  (define-key ruby-mode-map "\M-\C-i" 'rct-complete-symbol)
  (define-key ruby-mode-map "\C-c\C-t" 'ruby-toggle-buffer)
  (define-key ruby-mode-map "\C-c\C-d" 'xmp)
  (define-key ruby-mode-map "\C-c\C-f" 'rct-ri))
(add-hook 'ruby-mode-hook 'ruby-mode-hook-rcodetools)

(require 'mode-compile)

(require 'rspec-mode)
(setq rspec-use-rake-flag t)
(setq rspec-spec-command "rspec")

(require 'ruby-block)
(ruby-block-mode t)
(setq ruby-block-highlight-toggle t)

;; find local gems
(defvar helm-c-sources-local-gem-file
  '((name . "rubygems")
    (candidates-in-buffer)
    (init . (lambda ()
              (let ((gemfile-dir (block 'find-gemfile
                                   (let* ((cur-dir (file-name-directory
                                                    (expand-file-name (or (buffer-file-name)
                                                                          default-directory))))
                                          (cnt 0))
                                     (while (and (< (setq cnt (+ 1 cnt)) 10)
                                                 (not (equal cur-dir "/")))
                                       (when (member "Gemfile" (directory-files cur-dir))
                                         (return-from 'find-gemfile cur-dir))
                                       (setq cur-dir (expand-file-name (concat cur-dir "/.."))))
                                     ))))
                (helm-attrset 'gem-command
                              (concat (if gemfile-dir
                                          (concat "BUNDLE_GEMFILE=" gemfile-dir "/Gemfile "
                                                  "bundle exec ")
                                        "")
                                      "gem 2>/dev/null"))
                (unless (helm-candidate-buffer)
                  (call-process-shell-command (concat (helm-attr 'gem-command) " list")
                                              nil
                                              (helm-candidate-buffer 'local))))))
    (action . (lambda (gem-name)
                (let ((path (file-name-directory
                             (shell-command-to-string
                              (concat (helm-attr 'gem-command) " which "
                                      (replace-regexp-in-string "\s+(.+)$" "" gem-name))))))
                  (if (and path (file-exists-p path))
                      (find-file path)
                    (message "no such file or directory: \"%s\"" path))
                  )))))

(defun helm-local-gems ()
  (interactive)
  (helm-other-buffer
   '(helm-c-sources-local-gem-file)
   "*helm local gems*"
   ))
