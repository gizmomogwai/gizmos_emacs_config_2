;;; 005-extend-safe-variabler.el --- allow to change c-offsets-alist in .dir-locals.el
;;; Commentary:
;;; Code:
(put 'c-offsets-alist 'safe-local-variable 'listp)

(provide '005-extend-safe-variabler)
;;; 005-extend-safe-variabler.el ends here
