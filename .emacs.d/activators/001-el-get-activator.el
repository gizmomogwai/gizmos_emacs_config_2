(add-to-list 'load-path (concat emacs-d-dir "/submodules/el-get"))

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
	toggle-friend-file
	find-file-in-project
))

(if (= emacs-major-version 24)
    (setq my-el-get-sources
	  (append
	   '(zenburn-theme)
	   (mapcar 'el-get-source-name el-get-sources))))
(if (= emacs-major-version 23)
    (setq my-el-get-sources
	  (append
	   '(color-theme color-theme-zenburn)
	   (mapcar 'el-get-source-name el-get-sources))))

(el-get 'sync my-el-get-sources)
