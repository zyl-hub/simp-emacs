;;-*- lexical-binding: t -*-

(setup gptel
  (:straight gptel)
  (setq gptel-default-mode 'org-mode)

  ;; Register Deepseek model
  (setq
   gptel-model 'DeepSeek-R1
   gptel-backend (gptel-make-deepseek "DeepSeek"      ;Any name you want
		   :host "aihubmix.com"
		   :endpoint "/v1/chat/completions"
		   :stream t
		   :key "sk-DQiMnpBL8xZTqiqM6f8c937f4c774e1c98B42d164bBe2466"
		   :models '(deepseek-ai/DeepSeek-R1-Distill-Qwen-32B
			     DeepSeek-R1
			     DeepSeek-V3 ;后面可以补充任意的模型名
			     )))
  
  ;; Register Gemini 2.0 Flash model
  (gptel-make-openai "Aihubmix"
    :host "aihubmix.com"
    :endpoint "/v1/chat/completions"
    :stream t
    :key "sk-DQiMnpBL8xZTqiqM6f8c937f4c774e1c98B42d164bBe2466"
    :models '(gemini-2.0-flash
	      gemini-2.0-flash-exp
	      claude-3-7-sonnet-20250219
	      o3-mini))
  )

(setup gptel-mode
  (:hook visual-line-mode))

(provide 'init-gptel)
