;;; init-key-chord.el --- chords are nice
;;; Commentary:
;;; Code:
(require 'key-chord)
(key-chord-define-global "uu" 'undo-tree-visualize)
(key-chord-define-global "xx" 'execute-extended-command)
(key-chord-define-global "yy" 'helm-show-kill-ring)
(key-chord-define-global "FF" 'helm-find-files)
(key-chord-define-global "kk" 'helm-mini)
(key-chord-define-global "bm" 'helm-buffers-list)
(key-chord-define-global "RR" 'helm-projectile)
(key-chord-define-global "BB" 'beginning-of-buffer)
(key-chord-define-global "BE" 'end-of-buffer)
(key-chord-define-global "gs" 'magit-status)
(key-chord-define-global "bw" 'save-buffer)
(key-chord-define-global "GG" 'goto-line)
(key-chord-define-global "br" 'kill-buffer)
(key-chord-define-global "MM" 'delete-other-windows)
(key-chord-mode +1)

;;; init-key-chord.el ends here
