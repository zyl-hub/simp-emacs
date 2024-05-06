;;-*- lexical-binding: t -*-

(setup emacs
  (:global [f5] (lambda() (interactive) (find-file user-init-file)))
  (set-language-environment "utf-8")
  ;; (fido-vertical-mode)
  (setq default-directory (cond ((eq system-type 'windows-nt) "c:/project/")
			      ((eq system-type 'gnu/linux) "~/")))
  (save-place-mode 1)
  (desktop-save-mode 1)
  (setq make-backup-files nil))

(setup electric-pair-mode
  (:hook-into prog-mode))

(provide 'init-basic)
