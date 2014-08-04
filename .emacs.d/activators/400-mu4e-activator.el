;;; 400-mu4e-activator.el --- mu4e experiments
;;; Commentary:
;;; Code:
(setq mu4e-sent-folder "/Account1/Saved Items"
      mu4e-drafts-folder "/Account1/Drafts"
      user-mail-address "my.address@account1.tld"
      smtpmail-default-smtp-server "smtp.account1.tld"
      smtpmail-local-domain "account1.tld"
      smtpmail-smtp-server "smtp.account1.tld"
      smtpmail-stream-type "starttls"
      smtpmail-smtp-service 25)

(defvar my-mu4e-account-alist
  '(("Gmail"
     (mu4e-sent-folder "/Gmail/Saved Items")
     (mu4e-drafts-folder "/Gmail/Drafts")
     (user-mail-address "my.address@account1.tld")
     (smtpmail-default-smtp-server "smtp.account1.tld")
     (smtpmail-local-domain "account1.tld")
     (smtpmail-smtp-server "smtp.account1.tld")
     (smtpmail-stream-type "starttls")
     (smtpmail-smtp-service 25))
    ("ESR"
     (mu4e-sent-folder "/ESR/Saved Items")
     (mu4e-drafts-folder "/ESR/Drafts")
     (user-mail-address "my.address@account2.tld")
     (smtpmail-default-smtp-server "smtp.account2.tld")
     (smtpmail-local-domain "account2.tld")
     (smtpmail-smtp-server "smtp.account2.tld")
     (smtpmail-stream-type "starttls")
     (smtpmail-smtp-service 587))))

(defun my-mu4e-set-account ()
  "Set the account for composing a message."
  (let* ((account
          (if mu4e-compose-parent-message
              (let ((maildir (mu4e-message-field mu4e-compose-parent-message :maildir)))
                (string-match "/\\(.*?\\)/" maildir)
                (match-string 1 maildir))
            (completing-read (format "Compose with account: (%s) "
                                     (mapconcat #'(lambda (var) (car var))
                                                my-mu4e-account-alist "/"))
                             (mapcar #'(lambda (var) (car var)) my-mu4e-account-alist)
                             nil t nil nil (caar my-mu4e-account-alist))))
         (account-vars (cdr (assoc account my-mu4e-account-alist))))
    (if account-vars
        (mapc #'(lambda (var)
                  (set (car var) (cadr var)))
              account-vars)
      (error "No email account found"))))

(provide '400-mu4e-activator)
;;; 400-mu4e-activator.el ends here
