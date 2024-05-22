;;-*- lexical-binding: t -*-

(setup org
  (:straight (org
	      :type git
	      :host nil
	      :repo "https://git.tecosaur.net/tec/org-mode.git"))
  (:global "C-c c" #'org-capture)
  (setq org-startup-indented t)
  (setq org-startup-with-latex-preview t)
  ;; (setq org-latex-preview-auto-mode t)
  (setq org-latex-packages-alist
	'(("" "amssymb" t)
	  ("" "amsmath" t
	   ("pdflatex"))
          ;; Add other packages here
          ))
  (setq org-preview-latex-default-process 'dvisvgm)
  (setq org-capture-templates nil)
  (:with-function org-latex-preview-auto-mode
    (:hook-into org-mode-hook))

  (setq org-capture-templates
	'(("t" "Todo" entry (file+headline "~/org/gtd.org" "Tasks")
           "* TODO %?\n  %i\n  %a")
	  ("d" "Document for lab" entry (file+datetree "~/org/doc.org")
           "* %?\nEntered on %U\n  %i\n")
          ("j" "Journal" entry (file+datetree "~/org/journal.org")
           "* %?\nEntered on %U\n  %i\n  %a")
	  ("p" "Paper" entry (file+datetree "~/org/paper.org")
	   "* %?\nEntered on %U\n %i\n %a")))
  (:when-loaded
    (setq org-format-latex-options (plist-put org-format-latex-options :scale 1.75))
    (add-to-list 'org-src-lang-modes '("latex" . LaTeX))))

(setup org-modern
  (:straight org-modern)
  (setq org-modern-star 'replace)
  (with-eval-after-load 'org (global-org-modern-mode))
  (:when-loaded
    (set-face-attribute 'org-modern-symbol nil :family "Iosevka")))

(provide 'init-org)
