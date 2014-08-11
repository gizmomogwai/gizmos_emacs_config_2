;;; 500-org-mode-activator.el --- my org-mode tuning
;;; Commentary:
;;; Code:

;;(eval-after-load "org"
;;  '(progn
;;     (setq ido-everywhere t)
;;     (setq ido-max-directory-size 100000)
;;     (ido-mode (quote both))
;;;     (setq ido-default-file-method 'selected-window)
;;;     (setq ido-default-buffer-method 'selected-window)
;;
;;     (setq org-export-latex-listings 'minted)
;;     (setq org-export-latex-minted-options '(("frame" "lines")
;;					     ("fontsize" "\\scriptsize")
;;					     ("linenos" "")))
;;
;;					; (setq org-export-latex-listings t)
;;;     (add-to-list 'org-export-latex-packages-alist '("" "minted"))
;;;     (add-to-list 'org-export-latex-packages-alist '("" "color"))
;;;     (add-to-list 'org-export-latex-packages-alist '("" "listing"))
;;;     (add-to-list 'org-export-latex-packages-alist '("" "bookman"))
;;
;;     (setq org-latex-to-pdf-process
;;	   '("pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
;;	     "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
;;	     "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"))
;;
;;     (setq org-babel-C++-compiler "g++ -I/Users/gizmo/bin/boost/include -I/home/ckoestlin/bin/boost/include")
;;
;;))
;;
(require 'org)
(defconst my-org-professional-base "~/org/professional" "Base for professional org files.")
(defconst
  my-org-esr-base
  (concat my-org-professional-base "/esr") "Base for esr org files.")
(defconst my-org-ubi-base
  (concat my-org-esr-base "/ubi") "Base for ubi org files.")

(setq org-agenda-files
      '(
        "~/org/private"
        "~/org/professional/esr/breaks.org"
        "~/org/professional/esr/2014/ubi.org"
        "~/org/professional/esr/2014/carsharing.org"
        "~/org/professional/esr/2014/it.org"
        "~/org/professional/esr/2014/studygroups.org"
        "~/Dropbox/Public/ebay/ebay.org"
        ))

;;       (concat my-org-esr-base "/2014/")
;;       (concat my-org-ubi-base "/2014/ubi/")
;;       "~/org/private/"

(defconst it-file (concat my-org-esr-base "/it.org"))
(defconst ubi-calls (concat my-org-ubi-base "/calls.org"))
(defconst ubi-meetings (concat my-org-ubi-base "/meetings.org"))
(setq org-capture-templates
      (quote (("i" "An ESRLabs IT task" entry (file it-file)
               "* TODO IT-%?\n%U\n%a\n" :clock-in t :clock-resume t)
              ("c" "Phone calls")
              ("cu" "An UBI Phone Call" entry (file ubi-calls)
               "* UBI-PHONE: %? :phone:\n" :clock-in t :clock-resume t)
              ("m" "Meetings")
              ("mu" "An UBI Meeting" entry (file ubi-meetings)
               "* UBI-%?: Meeting :meeting:\n" :clock-in t :clock-resume t))))
;;
;;              ("r" "respond" entry (file "~/git/org/refile.org")
;;               "* NEXT Respond to %:from on %:subject\nSCHEDULED: %t\n%U\n%a\n" :clock-in t :clock-resume t :immediate-finish t)
;;              ("n" "note" entry (file "~/git/org/refile.org")
;;               "* %? :NOTE:\n%U\n%a\n" :clock-in t :clock-resume t)
;;              ("j" "Journal" entry (file+datetree "~/git/org/diary.org")
;;               "* %?\n%U\n" :clock-in t :clock-resume t)
;;              ("w" "org-protocol" entry (file "~/git/org/refile.org")
;;               "* TODO Review %c\n%U\n" :immediate-finish t)
;;              ("m" "Meeting" entry (file "~/git/org/refile.org")
;;               "* MEETING with %? :MEETING:\n%U" :clock-in t :clock-resume t)
;;              ("p" "Phone call" entry (file "~/git/org/refile.org")
;;               "* PHONE %? :PHONE:\n%U" :clock-in t :clock-resume t)))))
;;
(require 'ox-reveal)
;;(setq org-html-format-headline-function 'org-html-format-headline-default-function)

;;(require 'ob-tangle)
(require 'org-crypt)
(org-crypt-use-before-save-magic)
(setq org-tags-exclude-from-inheritance (quote ("crypt")))
;; GPG key to use for encryption
;; Either the Key ID or set to nil to use symmetric encryption.

(require 'epa-file)
(epa-file-enable)
(setq org-crypt-key "D48F6953")

;;; 500-org-mode-activator.el ends here
