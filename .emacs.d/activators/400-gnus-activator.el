(setq gnus-home-directory "~/.emacs.d/gnus")

(setq gnus-select-method (quote (nnnil "")))
(setq gnus-secondary-select-methods
      '(
	(nntp "news.digitalmars.com")
	(nnimap "home"
		(nnimap-address "imap.gmail-alias1.com")
		(nnimap-server-port 993)
		(nnimap-stream ssl)
		(nnimap-authinfo-file "~/.authinfo-christian.koestlin@gmail.com"))
	(nnimap "esrlabs"
		(nnimap-address "imap.gmail-alias2.com")
		(nnimap-server-port 993)
		(nnimap-stream ssl)
		(nnimap-authinfo-file "~/.authinfo-christian.koestlin@esrlabs.com"))
	)
      )

(setq gnus-parameters
      '(
	(".*"
	 (posting-style
	  (name "Christian Köstlin")
	  )
	 (gnus-summary-line-format "%U%R%z%I%[%um|%-30,30A%]  |  %s\n")
	 (display . all)
	 (expiry-wait . never)
	 (expiry-target . delete)
	)
	("nnimap.*Sent Mail"
	 (gnus-summary-line-format "%U%R%z%I%[%-30,30ut%]  |  %s\n")
	 )
	("nnimap.*esrlabs.*"
	 (posting-style
	  (eval (setq message-sendmail-extra-arguments '("-a" "esrlabs")))
	  (address "christian.koestlin@esrlabs.com")
	  (signature-file "~/.signature-christian.koestlin@esrlabs.com")
	  )
	 )
	("nnimap.*home.*"
	 (posting-style
	  (eval (setq message-sendmail-extra-arguments '("-a" "home")))
	  (address "christian.koestlin@gmail.com")
	  (signature-file "~/.signature-christian.koestlin@gmail.com")
	  )
	 )
	)
      )

(defconst my-emails '("christian.koestlin@gmail.com"
		      "christian.koestlin@esrlabs.com"))

(require 'cl)
(defun match-my-emails (s)
  "checks if s contains one of my emails"
  (some (lambda (pattern) (string-match-p pattern s)) my-emails))

(defun gnus-user-format-function-m (headers)
  (let ((to (gnus-extra-header 'To headers))
	(cc (gnus-extra-header 'Cc headers))
	(bcc (gnus-extra-header 'BCc headers)))
    (if (match-my-emails to)
	(message "to matches") (message "to matches not"))
    (if (match-my-emails to)
	(if (string-match-p "," to) ">" "»")
      (if (or (match-my-emails cc)
	      (match-my-emails bcc))
	  ">"
	" "))))

(defun gnus-user-format-function-t (headers)
  (let ((to (gnus-extra-header 'To headers)))
    to))

(setq message-send-mail-function 'message-send-mail-with-sendmail)
(if
    (eq system-type 'darwin)
    (setq sendmail-program "/Users/gizmo/.homebrew/bin/msmtp")
  (setq sendmail-program "/usr/bin/msmtp")
)
(setq message-sendmail-extra-arguments '("-a" "home"))
(setq gnus-permanently-visible-groups ".*")
(add-hook 'gnus-group-mode-hook 'gnus-topic-mode)
(setq gnus-thread-sort-functions
      '((not gnus-thread-sort-by-number)
	gnus-thread-sort-by-score))

(require 'gnus-demon)
(gnus-demon-add-handler 'gnus-demon-scan-news 5 nil)

; ≈(setq gnus-ignored-newsgroups "^to\\.\\|^[0-9. ]+\\( \\|$\\)\\|^[\"]\"[#'()]")
