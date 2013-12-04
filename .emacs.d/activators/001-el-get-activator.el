(add-to-list 'load-path (concat emacs-d-dir "/submodules/el-get"))

;(defun ac-common-setup ()
;  (setq ac-sources (append ac-sources '(ac-source-dictionary))))

(require 'el-get)
(setq el-get-sources
      '(
	zenburn-theme
	anything
	yasnippet
	undo-tree
        tff
	git-modes
	magit
	ert-expectations
        multiple-cursors
        expand-region
        dired+
        org-mode
	json
        highlight-parentheses
	paredit
        s
        dash
        flx
        projectile
        smooth-scrolling
        auto-complete
        flymake
        diminish
        xcscope
        d-mode
))

(el-get 'sync el-get-sources)
