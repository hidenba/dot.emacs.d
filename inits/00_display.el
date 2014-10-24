(tool-bar-mode nil)
(menu-bar-mode nil)
(global-font-lock-mode t)
(display-time)
(setq line-number-mode t)
(auto-compression-mode t)
(setq frame-title-format
      (concat "%b - emacs@" system-name))

(setq initial-frame-alist
      (append (list
               '(foreground-color . "white")
               '(background-color . "black")
               '(border-color . "black")
               '(mouse-color . "white")
               '(cursor-color . "white")
               '(width . 250)
               '(height . 60)
               '(top . 0)
               '(left . 0)
               '(alpha . (70 100 100 100))
               )
              initial-frame-alist))
(setq default-frame-alist initial-frame-alist)


;;(add-to-list 'default-frame-alist '(font . "ricty-18"))

(set-face-attribute 'default nil
                   :family "Ricty"
                   :height 160)


(set-fontset-font "fontset-default" 'japanese-jisx0208 '("Ricty" . "iso10646-*"))

(set-foreground-color "White")
