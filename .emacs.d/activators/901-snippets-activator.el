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

(defun smarter-move-beginning-of-line (arg)
  "Move point back to indentation of beginning of line.

Move point to the first non-whitespace character on this line.
If point is already there, move to the beginning of the line.
Effectively toggle between the first non-whitespace character and
the beginning of the line.

If ARG is not nil or 1, move forward ARG - 1 lines first.  If
point reaches the beginning or end of the buffer, stop there."
  (interactive "^p")
  (setq arg (or arg 1))

  ;; Move lines first
  (when (/= arg 1)
    (let ((line-move-visual nil))
      (forward-line (1- arg))))

  (let ((orig-point (point)))
    (back-to-indentation)
    (when (= orig-point (point))
      (move-beginning-of-line 1))))

(global-set-key [remap move-beginning-of-line]
                'smarter-move-beginning-of-line)


;;(require 'calfw-org)
;;(require 'calfw-ical)
;;(require 'calfw-cal)
;;(require 'calfw-howm)
;;(cfw:open-ical-calendar "https://www.google.com/calendar/ical/christian.koestlin%40gmail.com/private-22242bba960e1051adfe9db02c584ad7/basic.ics")
;;(require 'howm)
;
;;(defun my-open-calendar ()
;;  (interactive)
; ; (cfw:open-calendar-buffer
;;   :contents-sources
;;   (list
;;    (cfw:org-create-source "Green")  ; orgmode source
;;    (cfw:howm-create-source "Orange")  ; howm source
;;    (cfw:cal-create-source "Orange") ; diary source
;;    (cfw:ical-create-source "Moon" "~/moon.ics" "Gray")  ; ICS source1
;;    (cfw:ical-create-source "gcal" "https://www.google.com/calendar/ical/christian.koestlin%40gmail.com/private-22242bba960e1051adfe9db02c584ad7/basic.ics" "IndianRed")
;;   )))
;;; 901-snippets-activator.el ends here
