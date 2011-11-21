;; place keybindings here
(global-set-key [(ctrl tab)] 'dabbrev-expand)
(global-set-key (kbd "M-s") 'sr-speedbar-toggle)
(global-set-key (kbd "M-y") 'anything-show-kill-ring)
(global-set-key (kbd "C-c C-f") 'find-file)
(global-set-key (kbd "C-x C-f") 'lusty-file-explorer)
(global-set-key (kbd "C-x C-b") 'lusty-buffer-explorer)
(global-set-key (kbd "C-x C-a") 'anything)

;(global-set-key (kbd "C-c y") '(lambda ()
;                          	(interactive)
;				(popup-menu 'yank-menu)))
