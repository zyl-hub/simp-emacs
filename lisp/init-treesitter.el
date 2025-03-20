;;-*- lexical-binding: t -*-

(setup treesit-auto
  (:straight treesit-auto)
  (:with-function global-treesit-auto-mode
    (:autoload-this)
    (:hook-into after-init-hook))
  (:when-loaded
    (add-to-list 'treesit-language-source-alist
		 '(typst "https://github.com/uben0/tree-sitter-typst"))
    (setq treesit-auto-install 'prompt)
    (setq treesit-auto-add-to-auto-mode-alist 'all)))

(provide 'init-treesitter)
