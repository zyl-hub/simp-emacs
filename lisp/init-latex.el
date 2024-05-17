;;-*- lexical-binding: t -*-

(setup auctex
  (:straight auctex))

(setup cdlatex
  (:straight cdlatex)
  (:with-function turn-on-cdlatex
    (:hook-into LaTeX-mode-hook latex-mode-hook))
  (:with-function turn-on-org-cdlatex
    (:hook-into org-mode-hook)))

(provide 'init-latex)
