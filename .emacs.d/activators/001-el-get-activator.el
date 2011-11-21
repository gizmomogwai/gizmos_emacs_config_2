1(add-to-list 'load-path (concat emacs-d-dir "/submodules/el-get"))

(require 'el-get)
(setq el-get-sources
      '(;yasnippet
	;rainbow-mode
	;point-stack
	;ant
	;haml-mode
	;undo-tree
        ;clojure-slime
	;slime // does not compile
	magit
;	zenburn-theme
	linum-ex
	hlinum
	paredit
	parenface
	clojure-mode
	sr-speedbar
	anything
	smooth-scrolling
	lusty-explorer
	auto-complete
	markdown-mode
	el-expectations
))

(el-get 'sync el-get-sources)
