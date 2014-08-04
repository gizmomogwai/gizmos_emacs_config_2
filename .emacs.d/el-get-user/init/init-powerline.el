;;; init-powerline.el --- My powerline config
;;; Commentary:
;;; Code:
(require 'powerline)
(powerline-default-theme)

;;(defun abdo-zenburn-things ()
;;  (zenburn-with-color-variables
;;    (custom-set-faces
;;;;;;; powerline
;;    `(powerline-active0      ((t (:foreground ,zenburn-yellow   :background ,zenburn-bg-1     :inherit mode-line))))
;;    `(powerline-active1      ((t (:foreground ,zenburn-green+1  :background ,zenburn-bg+1     :inherit mode-line))))
;;    `(powerline-active2      ((t (:foreground ,zenburn-blue     :background ,zenburn-bg+3     :inherit mode-line))))
;;    `(powerline-active-alert ((t (:foreground ,zenburn-red+1    :background ,zenburn-bg+3     :inherit mode-line))))
;;
;;    `(powerline-inactive0      ((t (:foreground ,zenburn-green  :background ,zenburn-bg-05    :inherit mode-line))))
;;    `(powerline-inactive1      ((t (:foreground ,zenburn-green  :background ,zenburn-bg-05    :inherit mode-line))))
;;    `(powerline-inactive2      ((t (:foreground ,zenburn-green  :background ,zenburn-bg-05    :inherit mode-line))))
;;    `(powerline-inactive-alert ((t (:foreground ,zenburn-red+1  :background ,zenburn-bg-05    :inherit mode-line))))
;;
;;    `(powerline-root0        ((t (:foreground ,zenburn-yellow   :background ,zenburn-root-1   :inherit mode-line))))
;;    `(powerline-root1        ((t (:foreground ,zenburn-green+1  :background ,zenburn-root     :inherit mode-line))))
;;    `(powerline-root2        ((t (:foreground ,zenburn-blue     :background ,zenburn-root+1   :inherit mode-line))))
;;    `(powerline-root-alert   ((t (:foreground ,zenburn-red+1    :background ,zenburn-root+1   :inherit mode-line))))
;;
;;    `(powerline-evil-inactive  ((t (:foreground ,zenburn-green  :background ,zenburn-bg-05    :inherit mode-line))))
;;    `(powerline-evil-normal    ((t (:foreground ,zenburn-bg-1   :background ,zenburn-bg+4     :inherit mode-line))))
;;    `(powerline-evil-insert    ((t (:foreground ,zenburn-bg-1   :background ,zenburn-green    :inherit mode-line))))
;;    `(powerline-evil-visual    ((t (:foreground ,zenburn-bg-1   :background ,zenburn-blue+1   :inherit mode-line))))
;;    `(powerline-evil-operator  ((t (:foreground ,zenburn-bg-1   :background ,zenburn-red-1    :inherit mode-line))))
;;    `(powerline-evil-motion    ((t (:foreground ,zenburn-bg-1   :background ,zenburn-blue+1   :inherit mode-line))))
;;    `(powerline-evil-replace   ((t (:foreground ,zenburn-bg-1   :background ,zenburn-red-1    :inherit mode-line))))
;;    `(powerline-evil-emacs     ((t (:foreground ,zenburn-bg-1   :background ,zenburn-yellow-2 :inherit mode-line))))
;;    `(powerline-evil-unknown   ((t (:foreground ,zenburn-bg-1   :background ,zenburn-red-1    :inherit mode-line))))
;;    )))
;;
;;
;;(abdo-zenburn-things)
;; (custom-set-faces
;;  '(mode-line ((t (:foreground "#030303" :background "#bdbdbd" :box nil))))
;;  '(mode-line-inactive ((t (:foreground "#f9f9f9" :background "#666666" :box nil)))))

;;(defun powerline-simpler-vc-mode (s)
;;  (if s
;;      (replace-regexp-in-string "Git:" ":" s)
;;    s))
;;
;;(defun powerline-simpler-minor-display (s)
;;  (replace-regexp-in-string
;;   (concat " "
;;           (mapconcat 'identity '("Fly[^C]" "Undo-Tree" "GitGutter"
;;                                  "Abbrev" "ColorIds"
;;                                  "Fill" "AC" "FIC") "\\|")) "" s))
;;(defun powerline-simpler-major-display (s)
;;  "asdf")
;;;;  (replace-regexp-in-string
;;  ;; (concat "Emacs-Lisp" "" s)))
;;(defun powerline-ha-theme ()
;;  "A powerline theme that removes many minor-modes that don't serve much purpose on the mode-line."
;;  (interactive)
;;  (setq-default mode-line-format
;;                '("%e"
;;                  (:eval
;;                   (let*
;;                       ((active
;;                         (powerline-selected-window-active))
;;                        (mode-line
;;                         (if active 'mode-line 'mode-line-inactive))
;;                        (face1
;;                         (if active 'powerline-active1 'powerline-inactive1))
;;                        (face2
;;                         (if active 'powerline-active2 'powerline-inactive2))
;;                        (separator-left
;;                         (intern
;;                          (format "powerline-%s-%s" powerline-default-separator
;;                                  (car powerline-default-separator-dir))))
;;                        (separator-right
;;                         (intern
;;                          (format "powerline-%s-%s" powerline-default-separator
;;                                  (cdr powerline-default-separator-dir))))
;;                        (lhs
;;                         (list
;;                          ;;(powerline-raw "%*" nil 'l)
;;                          ;; (powerline-buffer-size nil 'l)
;;                          (powerline-buffer-id nil 'l)
;;                          (powerline-raw " ")
;;                          (funcall separator-left mode-line face1)
;;                          (powerline-narrow face1 'l)
;;                          (powerline-simpler-vc-mode (powerline-vc face1))))
;;                        (rhs
;;                         (list
;;                          (powerline-raw global-mode-string face1 'r)
;;                          (powerline-raw "%4l" face1 'r)
;;                          (powerline-raw ":" face1)
;;                          (powerline-raw "%3c" face1 'r)
;;                          (funcall separator-right face1 mode-line)
;;                          (powerline-raw " ")
;;                          (powerline-raw "%6p" nil 'r)
;;                          (powerline-hud face2 face1)))
;;                        (center
;;                         (list
;;                          (powerline-raw " " face1)
;;                          (funcall separator-left face1 face2)
;;                          (when
;;                              (boundp 'erc-modified-channels-object)
;;                            (powerline-raw erc-modified-channels-object face2 'l))
;;                          (powerline-simpler-major-display (powerline-major-mode face2 'l))
;;                          (powerline-process face2)
;;                          (powerline-raw " :" face2)
;;
;;                          (powerline-simpler-minor-display (powerline-minor-modes face2 'l))
;;
;;                          (powerline-raw " " face2)
;;                          (funcall separator-right face2 face1))))
;;                     (concat
;;                      (powerline-render lhs)
;;                      (powerline-fill-center face1
;;                                             (/
;;                                              (powerline-width center)
;;                                              2.0))
;;                      (powerline-render center)
;;                      (powerline-fill face1
;;                                      (powerline-width rhs))
;;                      (powerline-render rhs)))))))
;;
;;(powerline-ha-theme)
;;
;;(sml/setup)
;;(sml/apply-theme 'respectful)
;;(setq mode-line-format "test")

;;; init-powerline.el ends here
