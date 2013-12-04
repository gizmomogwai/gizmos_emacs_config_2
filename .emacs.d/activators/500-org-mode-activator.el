(eval-after-load "org"
  '(progn
     (setq ido-everywhere t)
     (setq ido-max-directory-size 100000)
     (ido-mode (quote both))
     (setq ido-default-file-method 'selected-window)
     (setq ido-default-buffer-method 'selected-window)

     (setq org-export-latex-listings 'minted)
     (setq org-export-latex-minted-options '(("frame" "lines")
					     ("fontsize" "\\scriptsize")
					     ("linenos" "")))

					; (setq org-export-latex-listings t)
     (add-to-list 'org-export-latex-packages-alist '("" "minted"))
     (add-to-list 'org-export-latex-packages-alist '("" "color"))
     (add-to-list 'org-export-latex-packages-alist '("" "listing"))
     (add-to-list 'org-export-latex-packages-alist '("" "bookman"))

     (setq org-latex-to-pdf-process
	   '("pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
	     "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
	     "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"))

     (setq org-babel-C++-compiler "g++ -I/Users/gizmo/bin/boost/include -I/home/ckoestlin/bin/boost/include")

))

(require 'ob-tangle)
