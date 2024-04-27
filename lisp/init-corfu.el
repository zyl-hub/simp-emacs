;; corfu-terminal is required if you want to use Corfu in terminal
(setup corfu
  (:straight corfu)
  (:option corfu-auto t)
  (global-corfu-mode))

(provide 'init-corfu)
