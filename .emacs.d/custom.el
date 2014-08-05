;;; custom.el --- custom file used for the customize-system
;;; Commentary:
;;; Code:

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(backup-by-copying t)
 '(backup-directory-alist (quote (("." . "~/.emacs-backups/"))))
 '(browse-url-browser-function (quote browse-url-generic))
 '(browse-url-generic-program
   (if (eq system-type 'darwin) "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" "google-chrome") NOW)
 '(calendar-date-style (quote iso))
 '(cscope-program "~/bin/cscope")
 '(custom-safe-themes
   (quote
    ("3a727bdc09a7a141e58925258b6e873c65ccf393b2240c51553098ca93957723" "756597b162f1be60a12dbd52bab71d40d6a2845a3e3c2584c6573ee9c332a66e" "6a37be365d1d95fad2f4d185e51928c789ef7a4ccf17e7ca13ad63a8bf5b922f" "3c9d994e18db86ae397d077b6324bfdc445ecc7dc81bb9d528cd9bba08c1dac1" "dc2ae53baca6dabf168ddc038e3c5add1a34a1947087e778e9d14f0e2d4b89a2" "d6a00ef5e53adf9b6fe417d2b4404895f26210c52bb8716971be106550cea257" default)))
 '(delete-old-versions t)
 '(desktop-lazy-idle-delay 1)
 '(desktop-restore-eager 1)
 '(diary-file (concat emacs-d-dir "diary"))
 '(el-get-verbose t)
 '(fci-always-use-textual-rule t)
 '(fci-rule-character 58)
 '(fci-rule-color "#989898")
 '(flycheck-mode-line
   (quote
    (" "
     (:eval
      (pcase flycheck-last-status-change
        ((\` not-checked)
         nil)
        ((\` no-checker)
         (propertize "-"
                     (quote face)
                     (quote warning)))
        ((\` running)
         (propertize "✷"
                     (quote face)
                     (quote success)))
        ((\` errored)
         (propertize "!"
                     (quote face)
                     (quote error)))
        ((\` finished)
         (let*
             ((error-counts
               (flycheck-count-errors flycheck-current-errors))
              (no-errors
               (cdr
                (assq
                 (quote error)
                 error-counts)))
              (no-warnings
               (cdr
                (assq
                 (quote warning)
                 error-counts)))
              (face
               (cond
                (no-errors
                 (quote error))
                (no-warnings
                 (quote warning))
                (t
                 (quote success)))))
           (propertize
            (format "%s/%s"
                    (or no-errors 0)
                    (or no-warnings 0))
            (quote face)
            face)))
        ((\` interrupted)
         "-")
        ((\` suspicious)
         (quote
          (propertize "?"
                      (quote face)
                      (quote warning)))))))))
 '(global-auto-revert-mode t)
 '(global-diff-hl-mode t)
 '(global-flycheck-mode t nil (flycheck))
 '(global-git-gutter+-mode t)
 '(global-hl-line-mode t)
 '(global-linum-mode t)
 '(global-prettify-symbols-mode t)
 '(grep-command "grep -nHri -e * ")
 '(grep-highlight-matches (quote auto))
 '(grep-scroll-output t)
 '(helm-locate-command "$HOME/bin/glocate --database=$HOME/tmp/locatedb %s %s")
 '(howm-directory "~/Dropbox/Document/_projects/howm/")
 '(ido-enable-flex-matching t)
 '(ido-mode (quote both) nil (ido))
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(initial-scratch-message "")
 '(kept-new-versions 5)
 '(kept-old-versions 5)
 '(kill-whole-line t)
 '(linum-format "%4d ")
 '(longlines-auto-wrap nil)
 '(ns-alternate-modifier (quote none))
 '(ns-command-modifier (quote meta))
 '(org-agenda-files
   (quote
    ("~/Dropbox/Documents/_projects/ubitricity/2014-04-10.org" "/Users/gizmo/Dropbox/Documents/_projects/org/private/2012-04.org" "/Users/gizmo/Dropbox/Documents/_projects/org/private/aktien.org" "/Users/gizmo/Dropbox/Documents/_projects/org/private/clocking.org" "/Users/gizmo/Dropbox/Documents/_projects/org/private/cristino.org" "/Users/gizmo/Dropbox/Documents/_projects/org/private/cumiana.org" "/Users/gizmo/Dropbox/Documents/_projects/org/private/debugging.org" "/Users/gizmo/Dropbox/Documents/_projects/org/private/e17.org" "/Users/gizmo/Dropbox/Documents/_projects/org/private/google-aufgaben.org" "/Users/gizmo/Dropbox/Documents/_projects/org/private/hohentengen.org" "/Users/gizmo/Dropbox/Documents/_projects/org/private/kapital.org" "/Users/gizmo/Dropbox/Documents/_projects/org/private/laufwunder.org" "/Users/gizmo/Dropbox/Documents/_projects/org/private/music.org" "/Users/gizmo/Dropbox/Documents/_projects/org/private/ottergirl.org" "/Users/gizmo/Dropbox/Documents/_projects/org/private/otterhaus-finanzen.org" "/Users/gizmo/Dropbox/Documents/_projects/org/private/segmueller.org" "/Users/gizmo/Dropbox/Documents/_projects/org/private/snowboard.org" "/Users/gizmo/Dropbox/Documents/_projects/org/private/sri-lanka.org" "/Users/gizmo/Dropbox/Documents/_projects/org/private/surf.org" "/Users/gizmo/Dropbox/Documents/_projects/org/private/todo.org" "/Users/gizmo/Dropbox/Documents/_projects/org/private/versicherung-rechnungen-2013.org" "/Users/gizmo/Dropbox/Documents/_projects/org/private/versicherungen.org" "/Users/gizmo/Dropbox/Documents/_projects/org/professional/esr/2013/2013-01.org" "/Users/gizmo/Dropbox/Documents/_projects/org/professional/esr/2013/2013-02.org" "/Users/gizmo/Dropbox/Documents/_projects/org/professional/esr/2013/2013-03.org" "/Users/gizmo/Dropbox/Documents/_projects/org/professional/esr/2013/2013-05.org" "/Users/gizmo/Dropbox/Documents/_projects/org/professional/esr/2013/2013-06.org" "/Users/gizmo/Dropbox/Documents/_projects/org/professional/esr/2013/2013-07.org" "/Users/gizmo/Dropbox/Documents/_projects/org/professional/esr/2013/carsharing.org" "/Users/gizmo/Dropbox/Documents/_projects/org/professional/esr/2013/freescale.org" "/Users/gizmo/Dropbox/Documents/_projects/org/professional/esr/2013/interview-questions.org" "/Users/gizmo/Dropbox/Documents/_projects/org/professional/esr/2013/ptp.org" "/Users/gizmo/Dropbox/Documents/_projects/org/professional/esr/2013/shopping.org" "~/Dropbox/Documents/_projects/org/refile.org")))
 '(org-babel-load-languages (quote ((emacs-lisp . t) (C . t) (ruby . t))))
 '(org-capture-templates
   (quote
    (("t" "todo" entry
      (file "~/Dropbox/Documents/_projects/org/refile.org")
      "* TODO %?" :clock-in t :clock-resume t))))
 '(org-clock-history-length 36)
 '(org-clock-in-resume t)
 '(org-clock-into-drawer "CLOCKING")
 '(org-clock-out-remove-zero-time-clocks t)
 '(org-clock-out-when-done t)
 '(org-clock-persist t)
 '(org-completion-use-ido t)
 '(org-confirm-babel-evaluate nil)
 '(org-default-notes-file "~/.emacs.d/org/refile.org")
 '(org-directory "~/Dropbox/Documents/_projects/org")
 '(org-export-latex-listings (quote minted) t)
 '(org-latex-to-pdf-process
   (quote
    ("pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f" "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f" "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f")) t)
 '(org-modules
   (quote
    (org-bbdb org-bibtex org-docview org-gnus org-id org-info org-jsinfo org-irc org-mew org-mhe org-rmail org-vm org-wl org-w3m)))
 '(org-outline-path-complete-in-steps nil)
 '(org-refile-allow-creating-parent-nodes (quote confirm))
 '(org-refile-targets
   (quote
    ((org-agenda-files :maxlevel . 9)
     (nil :maxlevel . 9))))
 '(org-refile-use-outline-path t)
 '(org-startup-indented t)
 '(projectile-completion-system (quote ido))
 '(projectile-enable-caching t)
 '(projectile-global-mode t)
 '(projectile-indexing-method (quote native))
 '(projectile-use-native-indexing t)
 '(recentf-auto-cleanup (quote never))
 '(recentf-filename-handlers (quote (abbreviate-file-name)))
 '(recentf-mode t)
 '(safe-local-variable-values
   (quote
    ((eval progn
           (c-set-offset
            (quote arglist-intro)
            (quote 2))
           (c-set-offset
            (quote arglist-close)
            (quote 0)))
     (eval org-columns)
     (eval outline-next-heading)
     (eval goto-char
           (point-min)))))
 '(show-trailing-whitespace t)
 '(tab-width 2)
 '(tool-bar-mode nil)
 '(version-control t)
 '(visible-bell t)
 '(warning-suppress-types (quote ((\(undo\ discard-info\)))))
 '(which-func-format (quote (quote (:eval (which-function)))))
 '(which-function-mode t)
 '(whitespace-style
   (quote
    (face tabs spaces trailing lines space-before-tab newline empty space-after-tab space-mark tab-mark newline-mark)))
 '(yas-global-mode t nil (yasnippet)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;;; custom.el ends here
