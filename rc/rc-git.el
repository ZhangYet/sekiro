;;;git.el ---
(require 'use-package)

(use-package magit
  :ensure t
  :bind ("C-x g" . magit-status))

(provide 'rc-git)
;;;
