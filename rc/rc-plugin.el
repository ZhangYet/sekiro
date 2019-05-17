;;; plugin.el---
;;; self develop plugin
(defun rename-post-update ()
  (interactive)
  (setq today (format-time-string "%Y-%m-%d"))
  (setq current-file-name (buffer-file-name))
  (setq new-name (replace-regexp-in-string "[0-9]+-[0-9]+-[0-9]+" today current-file-name))
  (rename-file current-file-name new-name)
  (rename-buffer new-name))


(provide 'rc-plugin)
;;;
