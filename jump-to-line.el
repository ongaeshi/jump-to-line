;;; jump-to-line.el --- Jump to line. 

;; Copyright (C) 2013 ongaeshi

;; Author: ongaeshi
;; Keywords: jump, line, back, file
;; Version: 0.1
;; Package-Requires:

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;;; Install:

;;; Initlial Setting:

;; (require 'jump-to-line)
;; 
;; ;; Key bindings
;; (global-set-key (kbd "C-c C-j") 'jump-to-line) ; Jump
;; (global-set-key (kbd "C-c C-b") 'jtl-back)     ; Back

;;; Code:

(defvar jtl-stack nil
  "Stack of positions.")

;;;###autoload
(defun jump-to-line ()
  "Comment."
  (interactive)
  (jtl-push-stack (point-marker))
  (jtl-find-goto-line "ChangeLog" 5))

;;;###autoload
(defun jtl-back ()
  "Comment."
  (interactive)
  (if (null jtl-stack)
      (error "jtl-stack is empty"))
  (jtl-jump-mark (jtl-pop-stack)))

;;; Private:

(defun jtl-find-goto-line (filename lineno)
  (find-file      filename)
  (jtl-goto-line  lineno))

(defun jtl-jump-mark (mark)
  (switch-to-buffer (marker-buffer mark))
  (goto-char        (marker-position mark)))

(defun jtl-goto-line (lineno)
  (goto-char (point-min))
  (goto-char (point-at-bol lineno)))

(defun jtl-push-stack (mark)
  (setq jtl-stack (cons mark jtl-stack)))

(defun jtl-pop-stack ()
  (let ((mark (car jtl-stack)))
    (setq jtl-stack (cdr jtl-stack))
    mark))

(provide 'jump-to-line)
;;; auto-shell-command.el ends here
