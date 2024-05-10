;;-*- lexical-binding: t -*-

(defun en-set-font ()
  (set-face-attribute
   'default nil
   :font (font-spec :family "CMU Typewriter Text"
                    :weight 'normal
                    :slant 'normal
                    :size (cond ((eq system-type 'gnu/linux) 20.0)
                                ((eq system-type 'windows-nt) 18.0))))
  (set-face-attribute
   'italic nil
   :font (font-spec :family "CMU Classical Serif"
                    :weight 'normal
                    :slant 'italic
                    :size (cond ((eq system-type 'gnu/linux) 20.0)
                                ((eq system-type 'windows-nt) 18.0)))))

(setup emacs
  (:global [f5] (lambda() (interactive) (find-file user-init-file)))
  (set-language-environment "utf-8")
  ;; (fido-vertical-mode)
  (setq default-directory (cond ((eq system-type 'windows-nt) "c:/project/")
			      ((eq system-type 'gnu/linux) "~/")))
  (save-place-mode 1)
  ;; (desktop-save-mode 1)
  (setq make-backup-files nil))

(setup font
  ;;; magic to make font settings work for emacsclient
  (when (display-graphic-p)
    (en-set-font))
  (:with-function en-set-font
    (:hook-into window-setup-hook server-after-make-frame-hook)))

(setup electric-pair-mode
  (:hook-into prog-mode))

(provide 'init-basic)
