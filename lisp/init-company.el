;;-*- lexical-binding: t -*-

(setup company
  (:straight company)
  (global-company-mode (:hook-into after-init-hook))
  (setq company-idle-delay 0.1))

(provide 'init-company)
