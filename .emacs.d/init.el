(require 'cl) ; a rare necessary use of REQUIRE
(defvar *emacs-load-start* (current-time))
(prefer-coding-system 'utf-8)
(setq emacs-d-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))

(setq activators-dir (concat emacs-d-dir "activators/"))

(defun time-diff (t1 t2)
  (let* (
	 (help-ms (- (third t1) (third t2)))
	 (ms (if (< help-ms 0) (+ 1000000 help-ms) help-ms))
	 (help-s (- (+ (first t1) (second t1)) (+ (first t2) (second t2))))
	 (s (if (= help-ms ms) help-s (- help-s 1)))
	 )
    (cons s ms)))

(dolist (activator (directory-files activators-dir t ".*-activator.el$"))
  (message "loading %s" activator)
  (setq start-of-package (current-time))
  (load-library activator)
  (setq load-time-of-package (time-diff (current-time) start-of-package))
  (message "%s loaded in %d.%ds" activator (car load-time-of-package) (cdr load-time-of-package))
  )

(let* (
       (since-start (time-diff (current-time) *emacs-load-start*))
       )
  (message "My .emacs loaded in %d.%ds" (car since-start) (cdr since-start))
)
(put 'narrow-to-region 'disabled nil)
(put 'upcase-region 'disabled nil)
