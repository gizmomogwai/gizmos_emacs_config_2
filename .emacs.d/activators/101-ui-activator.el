(if (= emacs-major-version 24) (load-theme 'zenburn))

(set-scroll-bar-mode nil)
(setq frame-title-format
      '(:eval
        (if buffer-file-name
            (replace-regexp-in-string
             (getenv "HOME") "~"
             (concat (file-name-directory buffer-file-name) "%b") )
          (buffer-name)
          )))
