;;-*- lexical-binding: t -*-

(setup company
  (:straight company)
  (global-company-mode (:hook-into after-init-hook)))

(provide 'init-company)
