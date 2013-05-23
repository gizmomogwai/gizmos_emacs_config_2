(add-to-list 'load-path (concat emacs-d-dir "/submodules/el-get"))

(require 'el-get)
(setq el-get-sources
      '(
	zenburn-theme
	anything
	yasnippet
	undo-tree
        tff
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
        projectile
))

(el-get 'sync el-get-sources)
