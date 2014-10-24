;; Setting rbenv path
(setenv "PATH" (concat (getenv "HOME") "/.rbenv/shims:" (getenv "HOME") "/.rbenv/bin:" (getenv "PATH")))
(setq exec-path (cons (concat (getenv "HOME") "/.rbenv/shims") (cons (concat (getenv "HOME") "/.rbenv/bin") exec-path)))

(autoload 'ruby-mode "ruby-mode" "Major mode for ruby files" t)
(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(add-to-list 'interpreter-mode-alist '("ruby" . ruby-mode))

(add-hook 'ruby-mode-hook 'ruby-refactor-mode-launch)

(add-hook 'ruby-mode-hook
  '(lambda ()
    (abbrev-mode 1)
    (electric-pair-mode t)
    (electric-indent-mode t)
    (electric-layout-mode t)))

(require 'ruby-hash-syntax)
(require 'ruby-test-mode)
(require 'ruby-end)
(require 'ruby-block)


(ruby-block-mode t)
(setq ruby-block-highlight-toggle t)


(add-hook 'ruby-mode-hook
          '(lambda ()
             (define-key ruby-mode-map "\C-c,t" 'ruby-test-toggle-implementation-and-specification)
             (define-key ruby-mode-map "\C-c,l" 'ruby-test-run-at-point)
             (define-key ruby-mode-map "\C-c,v" 'ruby-test-run)
           ))
