 (add-hook 'fish-mode-hook (lambda ()
                             (add-hook 'before-save-hook 'fish_indent-before-save)))
