;;-*- lexical-binding: t -*-

(setup gptel
  (:straight gptel)
  (setq gptel-default-mode 'org-mode)
  (setq gptel-backend
	(gptel-make-deepseek "DeepSeek-R1"      ;Any name you want
	  :host "aihubmix.com"
	  :endpoint "/v1/chat/completions"
	  :stream t
	  :key "sk-DQiMnpBL8xZTqiqM6f8c937f4c774e1c98B42d164bBe2466"
	  :models '(deepseek-ai/DeepSeek-R1-Distill-Qwen-32B ;后面可以补充任意的模型名
		    )))
  (setq gptel-model 'deepseek-ai/DeepSeek-R1-Distill-Qwen-32B)
  )

(provide 'init-gptel)
