;;; 101-ui-activator.el --- UI Tweaks
;;; Commentary:
;;; Code:
(set-scroll-bar-mode nil)
(setq frame-title-format
      '(:eval
        (if buffer-file-name
            (replace-regexp-in-string
             (getenv "HOME") "~"
             (concat (file-name-directory buffer-file-name) "%b") )
          (buffer-name)
          )))
;;; 101-ui-activator.el ends here
