(require 'cl)
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://elpa.emacs-china.org/melpa-stable/"))
(setq package-enable-at-startup nil)
(package-initialize)

(setq dotfiles-packages-list '(
			       use-package
			       magit
			       markdown-mode
			       neotree
			       moe-theme
			       ace-window
			       avy
			       ))

(defun dotfiles-auto-install-packages ()
  (package-refresh-contents)
  (mapc #'(lambda (package)
            (unless (package-installed-p package)
              (package-install package)))
        dotfiles-packages-list)
  (save-buffers-kill-emacs))

(dotfiles-auto-install-packages)
