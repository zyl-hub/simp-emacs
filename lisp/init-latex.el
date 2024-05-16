;;-*- lexical-binding: t -*-

(setup auctex
  (:straight auctex))

(setup cdlatex
  (:straight cdlatex)
  (:with-function turn-on-cdlatex
    (:hook-into LaTeX-mode-hook latex-mode-hook org-mode-hook))
  (:bind "<tab>" cdlatex-tab))

(provide 'init-latex)
