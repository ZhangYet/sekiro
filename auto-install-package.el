(require 'cl)
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://elpa.emacs-china.org/melpa-stable/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives '("org". "https://orgmode.org/elpa/") t)
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
			       auto-complete
			       git-gutter+
			       yasnippet
			       org
			       lua-mode
			       ))

(defun dotfiles-auto-install-packages ()
  (package-refresh-contents)
  (mapc #'(lambda (package)
            (unless (package-installed-p package)
              (package-install package)))
        dotfiles-packages-list)
  (save-buffers-kill-emacs))

(dotfiles-auto-install-packages)
