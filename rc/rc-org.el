;;; rc-org.el ---
(require 'use-package)

(use-package org
  :ensure t
  :init
  (setq org-todo-keywords
  '((sequence "TODO" "IN-PROGRESS" "WAITING" "DONE")))
  :bind (("C-c l" . 'org-store-link)
	 ("C-c a" . 'org-agenda)
	 ("C-c c" . 'org-capture)))

(require 'ox-md nil t)

(provide 'rc-org)
;;;
