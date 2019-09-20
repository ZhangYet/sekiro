;;; basic.el ---
(require 'use-package)

;; neo-tree
(use-package neotree
  :ensure t
  :bind ("C-z" . 'neotree-toggle)
  :init (setq neo-theme 'arrow))

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

;; hlinum
(use-package hlinum
  :config
  (hlinum-activate))

;; smex -- enhence M-x
(use-package smex
  :bind ("M-x" . smex))

;; (use-package helm
;;   :ensure t
;;   :init
;;   (require 'helm-config)
;;   :config
;;   (setq helm-split-window-in-side-p t
;;         helm-split-window-default-side 'below
;; 	helm-idle-delay 0.0
;; 	helm-input-idle-delay 0.01
;; 	helm-quick-update t
;; 	helm-ff-skip-boring-files t)
;;   (helm-mode 1)
;;   :bind (("M-x" . helm-M-x)
;;          ("C-x C-m" . helm-M-x)
;;          ("C-x C-f" . helm-find-files)
;;          ("C-x v" . helm-projectile)
;;          ("C-x c o" . helm-occur)
;;          ("C-x c p" . helm-projectile-ag)
;;          ("C-x c k" . helm-show-kill-ring)
;;          :map helm-map
;;          ("<tab>" . helm-execute-persistent-action)))

;; (use-package helm-ag
;;   :ensure t)

;; (use-package helm-projectile
;;   :ensure t)

;; (use-package helm-swoop
;;   :ensure t
;;   :bind
;;   ("C-x c s" . helm-swoop))

(provide 'rc-basic)
;;;
