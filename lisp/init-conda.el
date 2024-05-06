;;-*- lexical-binding: t -*-

(setup conda
  (:straight (conda
	      :host github
	      :type git
	      :repo "necaris/conda.el"))
  (custom-set-variables
   '(conda-anaconda-home (cond ((eq system-type 'windows-nt) "C:/Users/10160/scoop/apps/miniconda3/current")
			       ((eq system-type 'gnu/linux) "~/.conda"))))
  (conda-env-initialize-interactive-shells)
  (conda-env-initialize-eshell)
  ;; (conda-env-autoactivate-mode t)
  ;; (:with-function ((lambda () (when (bound-and-true-p conda-project-env-path) (conda-env-activate-for-buffer))))
  ;; (:hook-into find-file-hook)))
  )

;; (defun my-conda-env-change-advice (orig-fun &rest args)
  ;; (let ((result (apply orig-fun args)))
    ;; (lsp-workspace-restart)
    ;; result))

;; (advice-add 'conda-env-activate :after #'my-conda-env-change-advice)

(provide 'init-conda)
