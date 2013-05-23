(if (eq system-type 'gnu/linux)
    (set-default-font "Bitstream Vera Sans Mono 14")
  (set-face-attribute 'default nil
                :family "Bitstream Vera Sans Mono" :height 145 :weight 'normal)
;                :name "Bitstream Vera Sans Mono" :height 145 :weight 'normal)

)
; (eq system-type 'darwin)

(load-theme 'zenburn)
