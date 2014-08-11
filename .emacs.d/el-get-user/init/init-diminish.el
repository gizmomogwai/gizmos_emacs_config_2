;;; init-diminish.el --- my diminish config
;;; Commentary:
;;; Code:

(eval-after-load 'whitespace '(diminish 'whitespace-newline-mode))
(eval-after-load 'whitespace '(diminish 'whitespace-mode))
(eval-after-load 'whitespace '(diminish 'global-whitespace-mode))
(eval-after-load 'company '(diminish 'company-mode))
(eval-after-load 'abbrev '(diminish 'abbrev-mode))
(eval-after-load 'yasnippet '(diminish 'yas-minor-mode))
(eval-after-load 'magit '(diminish 'magit-auto-revert-mode))
(eval-after-load 'projectile '(diminish 'projectile-mode))
;;; init-diminish.el ends here
