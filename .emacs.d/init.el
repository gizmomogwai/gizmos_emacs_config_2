;;; init --- My Init File
;;; Commentary:
;;; Code:

(eval-when-compile (require 'cl))

(defun format-duration (time)
  "Formats TIME as seconds and milliseconds."
  (format "%d.%ds" (car time) (cdr time)))

(defun time-diff (t1 t2)
  "Small helper to calc the time difference between T1 and T2."
  (let* (
         (help-ms (- (third t1) (third t2)))
         (ms (if (< help-ms 0) (+ 1000000 help-ms) help-ms))
         (help-s (- (+ (first t1) (second t1)) (+ (first t2) (second t2))))
         (s (if (= help-ms ms) help-s (- help-s 1))))
    (cons s ms)))

(prefer-coding-system 'utf-8)
(defvar emacs-d-dir (file-name-directory
                     (or (buffer-file-name) load-file-name)) "The path to the EMACS config directory.")
(let ((emacs-load-start (current-time)))
  (let ((activators-dir (concat emacs-d-dir "activators/")))
    (dolist (activator (directory-files activators-dir t ".*-activator.el$"))
      (let* ((m1 (message "loading %s" activator))
             (start-of-package (current-time))
             (ok (load-library activator))
             (load-time-of-package (time-diff (current-time) start-of-package))
             (m2 (message "%s loaded in %s" activator (format-duration load-time-of-package)))))))
  (let ((since-start (time-diff (current-time) emacs-load-start)))
    (message "My .emacs loaded in %s" (format-duration since-start))))

(put 'narrow-to-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(provide 'init)
;;; init.el ends here

