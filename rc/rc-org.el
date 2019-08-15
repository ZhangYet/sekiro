;;; rc-org.el ---
(require 'use-package)

(use-package org
  :ensure t
  :bind (("C-c l" . 'org-store-link)
	 ("C-c a" . 'org-agenda)
	 ("C-c c" . 'org-capture)))

(provide 'rc-org)
;;;