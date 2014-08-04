;;; 900-keybindings-activator.el --- my keybindings
;;; Commentary:
;;; Code:

;; place keybindings here

(global-set-key (kbd "C-TAB") 'dabbrev-expand)
(global-set-key (kbd "M-R") 'find-file-in-project)
;;(global-set-key (kbd "C-c y") '(lambda ()
;;                          	(interactive)
;;				(popup-menu 'yank-menu)))
;;(global-set-key (kbd "C-0") 'ace-jump-mode)
(global-set-key (kbd "<f10>") 'org-capture)
;;(setq x-alt-keysym 'meta)
(global-set-key (kbd "C-h C-f") 'find-function-at-point)

;;; 900-keybindings-activator.el ends here
