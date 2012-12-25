(setq rsense-home "/usr/local/Cellar/rsense/0.3/libexec")
(add-to-list 'load-path (concat rsense-home "/etc"))
(require 'rsense)

(add-hook 'ruby-mode-hook
          (lambda ()
            (add-to-list 'ac-sources 'ac-source-rsense-method)
            (add-to-list 'ac-sources 'ac-source-rsense-constant)
            (define-key ruby-mode-map (kbd "C-x .") 'ac-complete-rsense)))

(setq rsense-rurema-home "/Users/hidenba/.rbenv/rurima/ruby-refm-1.9.3-dynamic-snapshot")
