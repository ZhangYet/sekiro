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

;; ace-window
(use-package avy
  :ensure t
  :bind (("C-o" . 'avy-goto-char)
	 ("M-o" . 'avy-goto-char-2)))

;; auto pair
(electric-pair-mode t)

;; auto complete
(use-package auto-complete
  :ensure t)
(add-hook 'emacs-lisp-mode-hook (lambda ()
				  (auto-complete-mode t)
				  (setq ac-sources (append ac-sources '(ac-source-functions)))))
(add-hook 'lua-mode-hook (lambda ()
			   (auto-complete-mode t)
			   (setq ac-sources (append ac-sources '(ac-sources-lua)))))

;; set windmove
(global-set-key (kbd "M-k") 'windmove-up)
(global-set-key (kbd "M-j") 'windmove-down)
(global-set-key (kbd "M-l") 'windmove-right)
(global-set-key (kbd "M-h") 'windmove-left)

;; yasnippet
(use-package yasnippet
  :ensure t
  :config (yas-global-mode 1)
  :bind (("C-c C-n" . yas-new-snippet)
	 ("C-c M-s" . yas-insert-snippet)))

;; org-mode
(use-package org
  :ensure)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

(provide 'rc-basic)
;;;
