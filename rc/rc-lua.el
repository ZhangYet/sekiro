;;; rc-lua.el ---
(require 'use-package)

(use-package lua-mode
  :ensure t
  :init
  (setq lua-indent-level 2)
  (setq lua-show-process-buffer nil)
  :bind (("C-x C-l" . 'lua-start-process)
	 ("C-x C-k" . 'lua-kill-process)
	 ("C-x C-S-l" . 'lua-send-current-line)
	 ("C-x C-S-b" . 'lua-send-buffer)
	 ("C-x C-S-r" . 'lua-send-region)
	 ("C-x C-S-f" . 'lua-send-defun)
	 ("C-x C-S-s" . 'lua-show-process-buffer)
	 ("C-x C-S-h" . 'lua-hide-process-buffer)))

(use-package company
  :ensure t)

(require 'company-lua)
(defun my-lua-mode-company-init ()
  (setq-local company-backends '((company-lua))))

(add-hook 'lua-mode #'my-lua-mode-company-init)


(provide 'rc-lua)
;;;
