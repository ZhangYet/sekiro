;;; rc-c ---
(require 'use-package)

(require 'rtags)

(defun ciao-goto-symbol ()
  (interactive)
  (deactivate-mark)
  (ring-insert find-tag-marker-ring (point-marker))
  (or (and (require 'rtags nil t)
           (rtags-find-symbol-at-point))
      (and (require 'semantic/ia)
           (condition-case nil
               (semantic-ia-fast-jump (point))
             (error nil)))))

(define-key c++-mode-map (kbd "M-.") 'ciao-goto-symbol)
(define-key c++-mode-map (kbd "M-,") 'pop-tag-mark)

(define-key c++-mode-map (kbd "M-.") 'ciao-goto-symbol)
(define-key c++-mode-map (kbd "M-,") 'pop-tag-mark)
(provide 'rc-c)
;;;
