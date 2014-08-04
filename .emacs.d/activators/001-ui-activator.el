;;; 101-ui-activator.el --- UI Tweaks
;;; Commentary:
;;; Code:
(setq ns-use-srgb-colorspace nil)
(set-scroll-bar-mode nil)
(setq frame-title-format
      '(:eval
        (if buffer-file-name
            (replace-regexp-in-string
             (getenv "HOME") "~"
             (concat (file-name-directory buffer-file-name) "%b") )
          (buffer-name)
          )))
;;; 001-ui-activator.el ends here
