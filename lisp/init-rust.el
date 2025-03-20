;;-*- lexical-binding: t -*-

(setup rust-mode
  (:straight rust-mode)
  (require 'rust-mode)
  (:hook lsp))

(setup rust-ts-mode
  (setq lsp-inlay-hint-enable t)
  (setq lsp-rust-analyzer-display-chaining-hints t)
  (setq lsp-rust-analyzer-display-lifetime-elision-hints-enable "skip_trivial")
  (setq lsp-rust-analyzer-display-lifetime-elision-hints-use-parameter-names t)
  (setq lsp-rust-analyzer-display-closure-return-type-hints t)
  (setq lsp-rust-analyzer-display-parameter-hints t)
  (setq lsp-rust-analyzer-display-reborrow-hints t)
  (:hook lsp))

(provide 'init-rust)
