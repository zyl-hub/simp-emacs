;;-*- lexical-binding: t -*-

(setup gptel
  (:straight gptel)
  (setq gptel-backend
	(gptel-make-openai "test"      ;Any name you want
			   :host "aihubmix.com"
			   :endpoint "/v1/chat/completions"
			   :stream t
			   :key "sk-DQiMnpBL8xZTqiqM6f8c937f4c774e1c98B42d164bBe2466"
			   :models '(DeepSeek-R1 ;后面可以补充任意的模型名
				     ))))

(provide 'init-gptel)
