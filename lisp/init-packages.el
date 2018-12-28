;; cl - Common Lisp Extension
(add-to-list 'package-archives
                          '("melpa-stable" . "http://stable.melpa.org/packages/") t)
;;(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
 ;; (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(require 'cl)
(require 'package) ;; You might already have this line(require 'org )Q
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
;;文件末尾
(provide 'init-packages)
