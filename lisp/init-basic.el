(setup emacs
  (:global "C-'" (lambda() (interactive) (find-file user-init-file)))
  (set-language-environment "utf-8")
  ;; (fido-vertical-mode)
  (save-place-mode 1))

(setup electric-pair-mode
  (:hook-into prog-mode))

(provide 'init-basic)
