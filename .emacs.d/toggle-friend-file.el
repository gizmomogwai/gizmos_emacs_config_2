(defgroup toggle-friend-file nil
  "Toggle between friend files."
  :group 'toggle-friend-file)

(defcustom toggle-friend-file-extension-mapping "cpp->h,h->cpp,haml->yaml,yaml->haml"
  "mapping between file extension"
  :type 'string
  :group 'toggle-friend-file)

(defun replace-with-first-pattern
  (patterns input)
  (if (eq nil (first patterns))
      input
    (let* ((p (first patterns))
	   (replaced (replace-regexp-in-string (car p) (cdr p) input))
	   (finished (not (string= replaced input))))
      (if finished replaced (replace-with-first-pattern (rest patterns) input)))))

(defun toggle-friend-file ()
 "toggles between friend files (e.g. .cpp and .h files)"
 (interactive)
 (let*
  ((friend-file-ext-mapping `(("cpp" . "h") ("h" . "cpp") ("haml" . "yaml") ("yaml" . "haml")))
   (friend-file-path-mapping `(("src" . "include") ("include" . "src")))
   (filename (buffer-file-name))
   (basename (file-name-sans-extension filename))
   (extension (file-name-extension filename))
   (new-extension (cdr (assoc extension friend-file-ext-mapping)))
   (new-filename (replace-with-first-pattern friend-file-path-mapping (concat basename "." new-extension)))
  )
  (if (not (eq nil new-extension)) (find-file new-filename))
 ))


(require 'el-expectations)
(dont-compile
  (when (fboundp 'expectations)
    (expectations
      (desc "1+1")
      (expect 2 (+ 1 1))
      (desc "fail")
      (expect 3 (+ 1 1))
      (desc "replace with one pattern")
      (expect "a23a" (replace-with-first-pattern '(("1" . "a")) "1231"))
      (desc "replace with second pattern")
      (expect "1b31" (replace-with-first-pattern '(("a" . "a") ("2" . "b")) "1231"))
      (desc "new")
      (expect 3 (+ 1 2))
      )))
