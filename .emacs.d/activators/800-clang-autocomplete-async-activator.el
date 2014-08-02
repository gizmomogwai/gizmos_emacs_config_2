;;(add-to-list 'load-path (concat emacs-d-dir "/submodules/emacs-clang-complete-async"))
;;
;;(defun ac-common-setup ()
;;  (setq ac-sources (append ac-sources '(ac-source-dictionary))))
;;(require 'auto-complete-clang-async)
;;
;;(if (eq system-type 'gnu/linux)
;;    (setq emacs-clang--complete-dir "linux")
;;  (setq emacs-clang--complete-dir "osx"))
;;
;;(defun ac-cc-mode-setup ()
;;  (setq ac-clang-complete-executable (concat "~/.emacs.d/submodules/emacs-clang-complete-async/" emacs-clang--complete-dir "/clang-complete"))
;;  (setq ac-sources '(ac-source-clang-async))
;;  (ac-clang-launch-completion-process)
;;)
;;
;;(defun my-ac-config ()
;;  (add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
;;  (add-hook 'auto-complete-mode-hook 'ac-common-setup)
;;  (global-auto-complete-mode t))
;;
;;(my-ac-config)
;;
