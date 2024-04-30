;;-*- lexical-binding: t -*-

(setup lsp-pyright
  (:straight lsp-pyright)
  (:with-function ((lambda () (require 'lsp-pyright) (lsp-deferred))) (:hook-into python-mode-hook python-ts-mode-hook)))

(provide 'init-python)
