;;-*- lexical-binding: t -*-

(setup company
  (:straight company)
  (company-mode (:hook-into prog-mode-hook))
  (setq company-idle-delay 0.1))

(provide 'init-company)
