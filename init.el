;;-*- lexical-binding: t -*-

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(setq custom-file (locate-user-emacs-file "custom.el"))

;; bootstrap init
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name
        "straight/repos/straight.el/bootstrap.el"
        (or (bound-and-true-p straight-base-dir)
            user-emacs-directory)))
      (bootstrap-version 7))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(require 'init-setup)
(require 'init-basic)
;; use corfu with lsp-mode need human intervention
;; (require 'init-corfu)
(require 'init-company)
(require 'init-lsp-mode)
(require 'init-python)
(require 'init-org)
(require 'init-magit)
(require 'init-latex)
(require 'init-beancount)
(require 'init-treesitter)
(require 'init-flycheck)
;; (require 'init-pyvenv)
(require 'init-conda)
(require 'init-typst)

;; (when (file-exists-p custom-file)
  ;; (load custom-file))

;;; init.el ends here
