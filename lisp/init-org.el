(setq org-agenda-custom-commands
      '(
	("w" . "任务安排")
	("wa" "重要且紧急的任务" tags-todo "+PRIORITY=\"A\"")
	("wb" "重要且不紧急的任务" tags-todo "-weekly-monthly-daily+PRIORITY=\"B\"")
	("wc" "不重要且紧急的任务" tags-todo "+PRIORITY=\"C\"")
	("W" "Weekly Review"
	 ((stuck "") ;; review stuck projects as designated by org-stuck-projects
	  (tags-todo "project")
	  (tags-todo "daily")
	  (tags-todo "weekly")
	  (tags-todo "work")
	  (tags-todo "code")
	  (tags-todo "theory")
	  ))
	))
