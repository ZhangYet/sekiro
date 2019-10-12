;;; rc-el---
(add-hook 'emacs-lisp-mode-hook #'rainbow-delimiters-mode)
(setq source-directory "~/emacs-26.3/src")
(if (file-directory-p "~/emacs-26.3")
    (setq find-function-C-source-directory "~/emacs-26.3/"))
(provide 'rc-el)
;;;
