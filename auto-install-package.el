(require 'cl)
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(setq package-enable-at-startup nil)
(package-initialize)

(setq dotfiles-packages-list '(use-package))

(defun dotfiles-auto-install-packages ()
  (package-refresh-contents)
  (mapc #'(lambda (package)
            (unless (package-installed-p package)
              (package-install package)))
        dotfiles-packages-list)
  (save-buffers-kill-emacs))

(dotfiles-auto-install-packages)
