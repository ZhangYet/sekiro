;;; rc-js---
(require 'use-package)

(use-package js2-mode
  :ensure t
  :init
  (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
  (add-hook 'js2-mode-hook #'js2-imenu-extras-mode))

(use-package xref-js2
  :ensure t
  :init
  (add-hook 'js2-mode-hook (lambda ()
			     (add-hook 'xref-backend-functions #'xref-js2-xref-backend nil t))))

(use-package company-tern
  :ensure t
  :init
  (add-to-list 'company-backend 'company-tern)
  (add-hook 'js2-mode-hook (lambda () (tern-mode t) (company-mode))))

(define-key tern-mode-keymap (kbd "M-.") nil)
(define-key tern-mode-keymap (kbd "M-,") nil)


(provide 'rc-js)
;;;
