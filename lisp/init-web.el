;;-*- lexical-binding: t -*-

;; (setup web-mode
  ;; (:straight web-mode)
  ;; (:hook html-mode)
  ;; )

(setup rainbow-mode
  (:straight rainbow-mode)
  (:hook-into html-mode-hook html-ts-mode-hook)
  (:when-loaded
    (add-to-list 'rainbow-html-colors-major-mode-list 'html-ts-mode)
    ;; (add-to-list 'rainbow-x-colors-major-mode-list 'html-ts-mode)
    )
)

(setup web
  (:with-function lsp
    (:hook-into html-mode-hook)))

(provide 'init-web)
