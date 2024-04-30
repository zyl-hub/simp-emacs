;;-*- lexical-binding: t -*-

(setup lsp-mode
  (:straight lsp-mode)
  (setq gc-cons-threshold 100000000)
  (setq read-process-output-max (* 1024 1024)))

(provide 'init-lsp-mode)
