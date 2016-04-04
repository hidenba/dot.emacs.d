(when (require 'edit-server nil t)
  (setq edit-server-new-frame nil)
  (edit-server-start))
(setq edit-server-url-major-mode-alist
      '(("github\\.com" . markdown-mode)))
