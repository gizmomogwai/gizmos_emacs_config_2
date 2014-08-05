;;; 003-custom-activator.el --- my custom config
;;; Commentary:
;;; I do as much as possible with the customize system
;;; Code:
(defvar emacs-d-dir)
(defun locate-tool-for-os ()
  "Return the locate tool in a platform dependend way."
  (if (eq system-type 'gnu/linux) "locate" "$HOME/bin/glocate"))

(setq custom-file (concat emacs-d-dir "custom.el"))
(load custom-file)
;;; 003-custom-activator.el ends here
