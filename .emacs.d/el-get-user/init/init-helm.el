;;; init-helm.el --- init helm
;;; Commentary:
;;; Code:
(require 'helm-config)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-for-files)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
;;; init-helm.el ends here

