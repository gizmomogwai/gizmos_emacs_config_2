(setq emacs-d-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))

(setq activators-dir (concat emacs-d-dir "activators/"))

(dolist (activator (directory-files activators-dir t ".*activator.el$"))
  (load-library activator))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("9cdf9fb94f560902b567b73f65c2ed4e5cfbaafe" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
