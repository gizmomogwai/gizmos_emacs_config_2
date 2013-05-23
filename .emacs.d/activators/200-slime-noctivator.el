(add-to-list 'load-path (concat emacs-d-dir "/submodules/slime"))

;(add-to-list 'load-path "~/hacking/lisp/slime/")
;(setq inferior-lisp-program "/opt/sbcl/bin/sbcl") ; your Lisp system
(require 'slime)

(slime-setup '(slime-fancy))
