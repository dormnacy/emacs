;; cl - Common Lisp Extension
(require 'cl)
(when (>= emacs-major-version 24)
    (require 'package)
    (package-initialize)
    (setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
			 ("melpa" . "http://elpa.emacs-china.org/melpa/"))))

;;(require 'package) ;; You might already have this line(require 'org )Q
(require 'org-install)
(require 'org )
(require 'ox-latex)
(require 'auto-complete)
(require 'auto-complete-config)
(require 'window-numbering )
(require 'org-habit)
(require 'org-pomodoro)
(require 'linum)
(require 'cnfonts)
(require 'php-mode)
(require 'cc-mode)
;;文件末尾
(provide 'init-packages)
