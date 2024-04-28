(setup beancount-mode
  (:straight (beancount-mode
	      :host github
	      :type git
	      :repo "beancount/beancount-mode"))
  (:hook flymake-bean-check-enable)
  (:with-hook (lambda () (setq-local electric-indent-chars nil)))
  (:file-match "\\.beancount\\'"))

(provide 'init-beancount)
