(package-initialize)

(add-to-list 'load-path "~/.emacs.d/rc")
(require 'rc-basic)
(require 'rc-markdown)
(require 'rc-git)
(require 'rc-go)
(require 'rc-plugin)
;; (require 'rc-lua)
(require 'rc-org)
(require 'rc-el)
(require 'rc-c)
(require 'rc-js)
(require 'rc-rust)

;; other config
(setq company-dabbrev-downcase nil)

;; install melpa
(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (when no-ssl
    (warn "\
Your version of Emacs does not support SSL connections,
which is unsafe because it allows man-in-the-middle attacks.
There are two things you can do about this warning:
1. Install an Emacs version that does support SSL and be safe.
2. Remove this warning from your init file so you won't see it again."))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives (cons "gnu" (concat proto "://elpa.gnu.org/packages/")))))
;; (package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files
   '("~/Repos/vigna/schedule" "~/Repos/vigna/book_review/douban" "~/Repos/vigna/notes"))
 '(package-selected-packages
   '(magit py-autopep8 python-black highlight-indentation highlight-indent-guides yaml-mode evil org-pdfview pdf-tools org-noter cargo racer multiple-cursors company-tern xref-js2 js2-mode company-c-headers counsel rainbow-delimiters flycheck-irony flycheck-rtags flycheck company-irony-c-headers company-irony company-rtags cmake-ide helm-swoop helm-projectile helm-ag helm ggtags smartparens smex hlinum org-mode company company-lua format-all format-sql org lua-mode go-mode git-gutter+ diff-hl auto-complete avy ace-windows ace-window yasnippet markdown-mode moe-theme neotree use-package paradox)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

