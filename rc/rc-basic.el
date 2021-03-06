;;; basic.el ---
(require 'use-package)

;; theme
(add-to-list 'load-path "~/.emacs.d/elpa/moe-theme.el/")
(require 'moe-theme)
(load-theme 'moe-dark t)

;; linum
(global-linum-mode t)

;; ace-window
(use-package avy
  :ensure t
  :bind (("C-o" . 'avy-goto-char)
	 ("M-o" . 'avy-goto-char-timer)))

;; auto pair
(electric-pair-mode t)

;; auto complete
(use-package auto-complete
  :ensure t)
(setq ac-ignore-case nil)
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

(use-package company
  :ensure t
  :init (add-hook 'after-init-hook 'global-company-mode))

(setq epg-gpg-program "gpg2")

;; multiple-cursors
(use-package multiple-cursors
  :ensure t
  :bind (("M-l" . mc/edit-lines)
	 ("M-n" . mc/mark-next-like-this)
	 ("M-p" . mc/mark-previous-like-this)))

;; evel mode
(use-package evil
  :ensure t
  :init
  (setq evil-default-state 'emacs))

(evil-mode 1)

;; neo-tree
(use-package neotree
  :ensure t
  :bind ("C-c C-z" . 'neotree-toggle)
  :init (setq neo-theme 'arrow))

;; indent
(add-to-list 'load-path "~/.emacs.d/elpa/highlight-indent-guides")
(require 'highlight-indent-guides)
(add-hook 'prog-mode-hook 'highlight-indent-guides-mode)
(setq highlight-indent-guides-method 'column)
;; (setq highlight-indent-guides-character ?\|)
(set-face-background 'highlight-indent-guides-odd-face "green")
(set-face-background 'highlight-indent-guides-even-face "blue")
(set-face-foreground 'highlight-indent-guides-character-face "green")

;; python
(setq python-shell-interpreter "python3")
(setq python-shell-completion-native-enable nil)
(require 'py-autopep8)
(add-hook 'python-mode-hook 'py-autopep8-enable-on-save)

;; some settings
(tool-bar-mode nil)
(global-hl-line-mode t)

(provide 'rc-basic)
;;;
