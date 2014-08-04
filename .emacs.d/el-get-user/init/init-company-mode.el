;;; init-company.el --- Company mode settings
;;; Commentary:
;;; Code:
(global-company-mode)
(add-hook 'emacs-lisp-mode-hook (lambda () (setq flycheck-emacs-lisp-load-path load-path)))
(provide 'init-company)
;;; init-company.el ends here
