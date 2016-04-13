(global-rbenv-mode)

(autoload 'ruby-mode "ruby-mode" "Major mode for ruby files" t)
(setq ruby-insert-encoding-magic-comment nil)
(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(add-to-list 'interpreter-mode-alist '("ruby" . ruby-mode))

(use-package "robe")

(add-hook 'ruby-mode-hook
          '(lambda ()
             (abbrev-mode 1)
             (robe-mode)
             (ruby-refactor-mode-launch)
             (electric-pair-mode t)
             (electric-indent-mode t)
             (electric-layout-mode t)
             (define-key ruby-mode-map "\C-c,t" 'ruby-test-toggle-implementation-and-specification)
             (define-key ruby-mode-map "\C-c,l" 'ruby-test-run-at-point)
             (define-key ruby-mode-map "\C-c,v" 'ruby-test-run)))

(use-package "ruby-block")
(ruby-block-mode t)
(setq ruby-block-highlight-toggle t)

(eval-after-load 'company
  '(push 'company-robe company-backends))

(projectile-global-mode)
(add-hook 'projectile-mode-hook 'projectile-rails-on)

(add-to-list 'auto-mode-alist '("\\.haml$" . haml-mode))
(add-to-list 'auto-mode-alist '("\\.sass$" . sass-mode))
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
