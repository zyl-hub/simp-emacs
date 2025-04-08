;;-*- lexical-binding: t -*-

(setup telega
  (:straight all-the-icons)
  (:straight telega)
  (add-hook 'telega-load-hook
            (lambda ()
              (define-key global-map (kbd "C-c t") telega-prefix-map)))
  (setq telega-avatar-workaround-gaps-for '(return t))
  (setq telega-emoji-font-family (font-spec :family "Noto Color Emoji")
	telega-emoji-use-images nil)
  )



(provide 'init-telega)
