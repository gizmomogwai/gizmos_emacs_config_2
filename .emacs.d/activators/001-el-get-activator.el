(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))
                                        ;(setq el-get-verbose t)
(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(setq el-get-user-package-directory "~/.emacs.d/el-get-user/init")
(setq el-get-sources
      '(
        el-get
        color-theme-zenburn
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
        ;;	json
        ;;        highlight-parentheses
        ;;	paredit
        s
        dash
        flx
        projectile
        ;;        smooth-scrolling
        auto-complete
        ;;        flymake
        diminish
        calfw
                                        ;        howm
        emacs-soap-client
        org-jira
        ;;        xcscope
        ;;        smartparens
        ace-jump-mode
        key-chord
        org-reveal
                                        ;        helm
        ))


(el-get 'sync el-get-sources)
