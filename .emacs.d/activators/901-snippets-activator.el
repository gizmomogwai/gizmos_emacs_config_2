(defun umlaute-2-html ()
  "replaces umlaute with html code"
  (interactive)
  (save-excursion
    (beginning-of-buffer)
    (replace-regexp "ä" "&auml;"))
  (save-excursion
    (beginning-of-buffer)
    (replace-regexp "ö" "&ouml;"))
  (save-excursion
    (beginning-of-buffer)
    (replace-regexp "ü" "&uuml;"))
  (save-excursion
    (beginning-of-buffer)
    (replace-regexp "ß" "&szlig;")))
