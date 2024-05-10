;;-*- lexical-binding: t -*-

(setup org
  (:global "C-c c" #'org-capture)
  (setq org-startup-indented t)
  (setq org-startup-with-latex-preview t)
  (setq org-capture-templates nil)
  (setq org-capture-templates
	'(("t" "Todo" entry (file+headline "~/org/gtd.org" "Tasks")
           "* TODO %?\n  %i\n  %a")
	  ("r" "Things to read" entry (file+datetree "~/org/read.org")
           "* %?\nEntered on %U\n  %i\n")
          ("j" "Journal" entry (file+datetree "~/org/journal.org")
           "* %?\nEntered on %U\n  %i\n  %a")
	  ("p" "Paper" entry (file+datetree "~/org/paper.org")
	   "* %?\nEntered on %U\n %i\n %a")))
  (:when-loaded
    (setq org-format-latex-options (plist-put org-format-latex-options :scale 1.75))))

(setup org-modern
  (:straight org-modern)
  (setq org-modern-star 'replace)
  (with-eval-after-load 'org (global-org-modern-mode))
  (:when-loaded
    (set-face-attribute 'org-modern-symbol nil :family "Iosevka")))

(provide 'init-org)
