;;; rc-rust ---
(require 'use-package)

(use-package rust-mode
  :ensure t)

(use-package cargo
  :hook (rust-mode . cargo-minor-mode))

;; Load rust-mode when you open `.rs` files
(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))
;; (add-to-list 'auto-mode-alist '("\\.rs\\'" . cargo-minor-mode))
(add-to-list 'auto-mode-alist '("Cargo.toml" . rust-mode))

;; racer
(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'racer-mode-hook #'company-mode)
(define-key rust-mode-map (kbd "TAB") #'company-indent-or-complete-common)
(setq company-tooltip-align-annotations t)


(provide 'rc-rust)
;;;
