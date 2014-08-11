;;; 101-ui-activator.el --- UI Tweaks
;;; Commentary:
;;; Code:
(blink-cursor-mode -1)
(set-scroll-bar-mode -1)
(menu-bar-mode -1)
(setq frame-title-format
      '(:eval
        (if buffer-file-name
            (replace-regexp-in-string
             (getenv "HOME") "~"
             (concat (file-name-directory buffer-file-name) "%b") )
          (buffer-name)
          )))
;;; 001-ui-activator.el ends here
