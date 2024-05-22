;;-*- lexical-binding: t -*-

(setup auctex
  (:straight auctex))

(setup cdlatex
  (:straight cdlatex)
  (:with-function turn-on-cdlatex
    (:hook-into LaTeX-mode-hook latex-mode-hook))
  (:with-function turn-on-org-cdlatex
    (:hook-into org-mode-hook))
  (setq cdlatex-env-alist
	'(("pmatrix" "\\begin{pmatrix}\n?\n\\end{pmatrix}" nil)))
  (setq cdlatex-command-alist
	'(("pmat" "Insert pmatrix env" "" cdlatex-environment ("pmatrix") t nil))))

(provide 'init-latex)
