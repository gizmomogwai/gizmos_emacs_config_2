(add-to-list 'load-path (concat emacs-d-dir "/submodules/el-get"))

(require 'el-get)
(setq el-get-sources
      '(;yasnippet
	;rainbow-mode
	;point-stack
	;ant
	;haml-mode
	magit
	;undo-tree
	;clojure-mode
        ;clojure-slime
	zenburn-theme
	linum-ex
	hlinum
))

(el-get 'sync el-get-sources)
