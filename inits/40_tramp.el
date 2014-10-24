;; Tramp
(require 'tramp)
(setq tramp-default-method "ssh")


(add-to-list 'tramp-default-proxies-alist
             '("togo.genes.nig.ac.jp" "root" "/ssh:tga@togo.genes.nig.ac.jp:"))

;; (add-to-list 'tramp-default-proxies-alist
;;              '(nil "\\`root\\'" "/ssh:%h:"))
;; (add-to-list 'tramp-default-proxies-alist
;;              '("localhost" nil nil))
;; (add-to-list 'tramp-default-proxies-alist
;;              '((regexp-quote (system-name)) nil nil))
