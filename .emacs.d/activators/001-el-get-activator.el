(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))
(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(setq el-get-user-package-directory "~/.emacs.d/el-get-user/init")
(setq el-get-sources
      '(
        ;; base
        el-get
        color-theme-zenburn
        helm

        ;; editor features
        hungry-delete
        key-chord
        powerline
        highlight-parentheses
        yasnippet
        undo-tree
        expand-region
        tff
        flycheck
        projectile
        multiple-cursors
        dired+

        ;; bigger ones
        magit
        git-timemachine
        org-mode

        ;; coding
        ert-expectations
        paredit
        s
        dash
                                        ; json
        ;; not needed
        ;; smooth-scrolling
        ;; auto-complete
        ;; calfw
        ;; howm
        ;; emacs-soap-client
        ;; org-jira
        ;; xcscope
        ;; smartparens
        ;; ace-jump-mode
        ;; org-reveal
        ))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(el-get 'sync el-get-sources)
