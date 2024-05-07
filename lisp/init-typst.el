;;-*- lexical-binding: t -*-

;; (add-to-list 'treesit-language-source-alist
             ;; '(typst "https://github.com/uben0/tree-sitter-typst"))
;; (treesit-install-language-grammar 'typst)

(setup typst-ts-mode
  (:straight (typst-ts-mode
	      :type git
	      :host sourcehut
	      :repo "meow_king/typst-ts-mode"
	      :files (:defaults "*.el))"))))

(setup websocket
  (:straight websocket))

(setup typst-preview
  (:straight (typst-preview
	      :type git
	      :host github
	      :repo "havarddj/typst-preview.el")))

(setup tinymist
  (:hooks typst-mode-hook    lsp
          typst-ts-mode-hook lsp)
  (:after* typst-ts-mode
	   (require 'lsp-mode)
	   (add-to-list 'lsp-language-id-configuration
			'("\\.typ$" . "typst"))
	   (lsp-register-client
	    (make-lsp-client
             :new-connection (lsp-stdio-connection (lambda () (executable-find "tinymist")))
             :major-modes '(typst-mode typst-ts-mode)
             :server-id 'tinymist))))

(provide 'init-typst)
