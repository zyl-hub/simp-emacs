;;-*- lexical-binding: t -*-

(setup treesit-auto
  (:straight treesit-auto)
  (:with-function global-treesit-auto-mode
    (:autoload-this)
    (:hook-into after-init-hook))
  (:when-loaded
    (setq treesit-auto-install 'prompt)
    (setq treesit-auto-add-to-auto-mode-alist 'all)))

(provide 'init-treesitter)
