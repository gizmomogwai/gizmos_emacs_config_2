;;; 901-snippets-activator.el --- Misc lisp snippets that are not libs
;;; Commentary:
;;; Code:
(defun replace-in-buffer (REGEXP TO-STRING)
  "Replace a REGEXP with TO-STRING in the whole buffer."
  (save-excursion
  (goto-char (point-min))
  (while (re-search-forward REGEXP nil t)
    (replace-match TO-STRING nil nil))))

(defun umlaute-2-html ()
  "Replace umlaute with html code."
  (interactive)
  (replace-in-buffer "ä" "&auml;")
  (replace-in-buffer "ö" "&ouml;")
  (replace-in-buffer "ü" "&uuml;")
  (replace-in-buffer "ß" "&szlig;"))
;;; 901-snippets-activator.el ends here
