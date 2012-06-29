
(if (eq system-type 'gnu/linux)
  (progn 
    (setq browse-url-browser-function (quote browse-url-generic))
    (setq browse-url-generic-program "google-chrome")
  )
)
