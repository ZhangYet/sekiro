;;; basic.el ---
(require 'use-package)

;; neo-tree
(use-package neotree
  :ensure t
  :bind ("C-z" . 'neotree-toggle))

;; theme
(use-package moe-theme
  :ensure t
  :config (load-theme 'moe-dark t))

;; linum
(global-linum-mode t)

(provide 'rc-basic)
;;;
