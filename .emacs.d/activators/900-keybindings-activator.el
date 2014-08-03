;;; 900-keybindings-activator.el --- my keybindings
;;; Commentary:
;;; Code:

;; place keybindings here
(global-set-key [(ctrl tab)] 'dabbrev-expand)
(global-set-key (kbd "M-y") 'anything-show-kill-ring)
(global-set-key (kbd "M-R") 'find-file-in-project)
;;(global-set-key (kbd "C-c y") '(lambda ()
;;                          	(interactive)
;;				(popup-menu 'yank-menu)))
;;(global-set-key (kbd "C-0") 'ace-jump-mode)
(global-set-key (kbd "<f10>") 'org-capture)
                                        ;(setq x-alt-keysym 'meta)

;;; 900-keybindings-activator.el ends here
