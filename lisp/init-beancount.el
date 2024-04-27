(setup beancount-mode
  (:straight (beancount-mode
	      :host github
	      :type git
	      :repo "beancount/beancount-mode"))
  ;; (:hook flymake-bean-check-enable)
  (:file-match "\\.beancount\\'"))

(provide 'init-beancount)
