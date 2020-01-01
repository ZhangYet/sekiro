;;; rc-rust ---
(require 'use-package)

(use-package rust-mode
	     :ensure t)

(add-hook 'rust-mode-hook 'cargo-minor-mode)

;;(setq racer-rust-src-path "/home/vagrant/repos/rust")
(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'racer-mode-hook #'company-mode)
(define-key rust-mode-map (kbd "TAB") #'company-indent-or-complete-common)
(setq company-tooltip-align-annotations t)

(provide 'rc-rust)
;;;
