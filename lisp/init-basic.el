;;-*- lexical-binding: t -*-

(defun en-set-font ()
  (set-face-attribute
   'default nil
   :font (font-spec :family "CMU Typewriter Text"
		    ;; :font (font-spec :family "MonaspiceNe NF"
                    :weight 'normal
                    :slant 'normal
                    :size (cond ((eq system-type 'gnu/linux) 14.0)
                                ((eq system-type 'windows-nt) 12.0))))

  (set-fontset-font t 'unicode
		    (font-spec :family "Noto Color Emoji"))

  (set-fontset-font t '(#x4e00 . #x9fff)
		    ;; (font-spec :family "LXGW Wenkai"
		    (font-spec :family (cond ((eq system-type 'gnu/linux) "Noto Sans CJK SC")
					     ((eq system-type 'windows-nt) "Noto Sans SC"))
			       :weight 'normal
			       :slant 'normal
			       :size (cond ((eq system-type 'gnu/linux) 12.0)
					   ((eq system-type 'windows-nt) 10.0))))

  ;; (set-fontset-font t 'symbol
  ;; (font-spec :family "Noto Color Emoji"))

  
  (set-face-attribute
   'italic nil
   :font (font-spec :family "CMU Classical Serif"
                    :weight 'normal
                    :slant 'italic
                    :size (cond ((eq system-type 'gnu/linux) 14.0)
                                ((eq system-type 'windows-nt) 12.0)))))

(setup emacs
  (:global [f5] (lambda() (interactive) (find-file user-init-file)))
  (set-language-environment "utf-8")
  ;; (when (memq system-type '(cygwin windows-nt ms-dos))
  ;; (setq default-process-coding-system '(gbk . gbk)))
  ;; (add-to-list 'process-coding-system-alist
  ;; '("cmdproxy" utf-8 . gbk))
  ;; (fido-vertical-mode)
  (setq default-directory (cond ((eq system-type 'windows-nt) "c:/project/")
				((eq system-type 'gnu/linux) "~/")))
  (save-place-mode 1)
  ;; (desktop-save-mode 1)
  (setq make-backup-files nil)
  (menu-bar-mode -1)
  (tool-bar-mode -1)
  (setq inhibit-startup-screen t))

(setup font
  ;;; magic to make font settings work for emacsclient
  (when (display-graphic-p)
    (en-set-font))
  (:with-function en-set-font
    (:hook-into window-setup-hook server-after-make-frame-hook)))

(setup electric-pair-mode
  (:hook-into prog-mode))

(setup avy
  (:straight avy)
  (:global "M-g w" #'avy-goto-word-1)
  (:global "M-g c" #'avy-goto-char-2)
  (:global "M-g l" #'avy-goto-line))

(setup theme
  (:straight ef-themes)
  (load-theme 'ef-frost t))

;; (setup doom-themes
;;   (:straight doom-themes)
;;   (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
;;         doom-themes-enable-italic t) ; if nil, italics is universally disabled
;;   (load-theme 'doom-one t)

;;   ;; Enable flashing mode-line on errors
;;   (doom-themes-visual-bell-config)
;;   ;; Enable custom neotree theme (nerd-icons must be installed!)
;;   (doom-themes-neotree-config)
;;   ;; or for treemacs users
;;   (setq doom-themes-treemacs-theme "doom-atom") ; use "doom-colors" for less minimal icon theme
;;   (doom-themes-treemacs-config)
;;   ;; Corrects (and improves) org-mode's native fontification.
;;   (doom-themes-org-config))

(provide 'init-basic)

