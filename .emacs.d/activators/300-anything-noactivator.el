(require 'anything)

(defvar anything-c-source-anything-google-fallback
  '((name . "Google fallback")
    (dummy)
    (action . google)))

(setq anything-sources
      '(
	anything-c-source-kill-ring
	anything-c-source-buffers
	anything-c-source-file-name-history
;	anything-c-source-info-pages
;	anything-c-source-info-elisp
;	anything-c-source-man-pages
	anything-c-source-emacs-commands
;	anything-c-source-anything-google-fallback
	))

(require 'anything-config)
