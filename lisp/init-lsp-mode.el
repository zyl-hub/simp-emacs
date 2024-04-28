;;-*- lexical-binding: t -*-

(setup lsp-mode
  (:straight lsp-mode))

(setup lsp-pyright
  (:straight lsp-pyright)
  (:with-function ((lambda () (require 'lsp-pyright) (lsp-deferred))) (:hook-into python-mode-hook python-ts-mode-hook)))

(provide 'init-lsp-mode)
