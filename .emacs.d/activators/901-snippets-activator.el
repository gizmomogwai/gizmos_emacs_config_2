;;; 901-snippets-activator.el --- Misc lisp snippets that are not libs
;;; Commentary:
;;; Code:
(defun umlaute-2-html ()
  "Replace umlaute with html code."
  (interactive)
  (save-excursion
    (goto-char (point-min))
    (replace-regexp "ä" "&auml;"))
  (save-excursion
    (goto-char (point-min))
    (replace-regexp "ö" "&ouml;"))
  (save-excursion
    (goto-char (point-min))
    (replace-regexp "ü" "&uuml;"))
  (save-excursion
    (goto-char (point-min))
    (replace-regexp "ß" "&szlig;")))
;;; 901-snippets-activator.el ends here
