(setq emacs-d-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))

(setq activators-dir (concat emacs-d-dir "activators/"))

(dolist (activator (directory-files activators-dir t ".*activator.el$"))
  (load-library activator))
