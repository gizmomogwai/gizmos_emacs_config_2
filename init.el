(print "Hello World")
(add-to-list 'load-path (file-name-directory load-file-name))

(require 'el-expectations)

(defun tff-replace-extension
  (patterns input)
  "replaces the extension from input with a matching pattern from patterns"
  (let* 
      ((extension (file-name-extension input))
       (basename (file-name-sans-extension input))
       (p (assoc extension patterns)))
    (if p (concat basename "." (car (cdr p))) nil)))

(defun tff-replace-with-first-matching-regexp
  (patterns input)
  "iterates over patterns and return the regexp-replace of the first regexp-match"
  (if (eq nil (first patterns)) input
    (let* ((pair (first patterns))
	   (pattern (car pair))
	   (repl (car (cdr pair))))
	   (replaced (replace-regexp-in-string pattern repl input))
	  ; (finished (not (string= replaced input)))
	   
      replaced)))
	   ;(if finished replaced (tff-replace-with-first-matching-regexp (rest patterns) input))
  )))
(replace-regexp-in-string "include" "src" "/some/path/src/test")
(first '(("cpp" "h")("rb" "rb")))
(expectations
  (desc "nil when no matching extension")
  (expect nil (tff-replace-extension '(("cpp" "h")) "test.rb"))
  (desc "not nil when a extension matches")
  (expect "test.yaml" (tff-replace-extension '(("cpp" "h")("rb" "yaml")) "test.rb"))

  (desc "replace with first matching regexp")
  (expect "/some/path/src/test" (tff-replace-with-first-matching-regexp '(("include" "src")("src" "include")) "/some/path/include/test"))
  )
      