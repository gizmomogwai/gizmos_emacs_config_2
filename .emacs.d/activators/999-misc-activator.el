;(require 'calfw-org)
;(require 'calfw-ical)
;(require 'calfw-cal)
;(require 'calfw-howm)
;(cfw:open-ical-calendar "https://www.google.com/calendar/ical/christian.koestlin%40gmail.com/private-22242bba960e1051adfe9db02c584ad7/basic.ics")
;(require 'howm)

;(defun my-open-calendar ()
;  (interactive)
 ; (cfw:open-calendar-buffer
;   :contents-sources
;   (list
;    (cfw:org-create-source "Green")  ; orgmode source
;    (cfw:howm-create-source "Orange")  ; howm source
;    (cfw:cal-create-source "Orange") ; diary source
;    (cfw:ical-create-source "Moon" "~/moon.ics" "Gray")  ; ICS source1
    ;(cfw:ical-create-source "gcal" "https://www.google.com/calendar/ical/christian.koestlin%40gmail.com/private-22242bba960e1051adfe9db02c584ad7/basic.ics" "IndianRed")
;   )))
