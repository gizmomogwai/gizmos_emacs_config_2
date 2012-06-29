(add-to-list 'load-path (concat emacs-d-dir "/submodules/el-get"))

(require 'el-get)
(setq el-get-sources
      '(
      	rainbow-mode
	point-stack
	; ant
	haml-mode
	yasnippet
	undo-tree
        ;; clojure-slime
	;; slime // does not compile
	egg
	git-blame
	linum-ex
	hlinum
	paredit
	parenface
	;clojure-mode
	;sr-speedbar
	anything
	smooth-scrolling
	lusty-explorer
	auto-complete
	markdown-mode
	zencoding-mode
	el-expectations
	toggle-friend-file
	find-file-in-project
	;lua-mode
	org-mode
	wrap-region
	highlight-indentation
;	;haskellmode-emacs
;	;rinari
;	;full-ack
	ace-jump-mode
	d-mode
	doxymacs
	zenburn-theme
	tramp-adb
	json
))

(el-get 'sync el-get-sources)
