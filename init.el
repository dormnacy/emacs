(package-initialize)
(add-to-list 'load-path "~/.jiangtao04/emacs.d/lisp/")
(require 'init-packages)
(require 'init-keybindings)
(require 'init-php)
(require 'init-yas)
;;(require 'init-magit)
(setq-default truncate-lines nil)
(setq org-latex-listings 'minted)
;;关闭文件备份
(setq make-backup-files nil)
(add-to-list 'org-latex-packages-alist '("" "minted"))
(setq tex-compile-commands '(("xelatex %r")))
(setq tex-command "xelatex")
(setq-default TeX-engine 'xelatex)
(setq org-latex-pdf-process
      '("xelatex -shell-escape -interaction nonstopmode -output-directory %o %f"
	"xelatex -shell-escape -interaction nonstopmode -output-directory %o %f"
	"xelatex -shell-escape -interaction nonstopmode -output-directory %o %f"))
(eval-after-load "org"
                 '(require 'ox-md nil t))
(setq org-default-notes-file (expand-file-name "~/GTD/.notes/inbox.org"))
(global-set-key (kbd "C-c l") 'org-store-link)
;; 显示行号

(global-linum-mode 1)
(setq linum-format "%4d \u2502")
;;(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
;; '(linum ((t (:inherit (shadow default) :background "#333333" :foreground "#cc6500")))))
;;(eval-after-load 'linum
;;  '(progn
;;     (defface linum-leading-zero
;;       `((t :inherit 'linum
;;	    :foreground ,(face-attribute 'linum :background nil t)))
;;     "Face for displaying leading zeroes for line numbers in display margin."
;;    :group 'linum)

;; (defun linum-format-func (line)
;;  (let ((w (length (number-to-string (count-lines (point-min) (point-max))))))
;;	      (propertize (format (format "%%%dd " w) line) 'face 'linum)))
;;
;;         (setq linum-format 'linum-format-func)))

;; 高亮括号配对
(electric-pair-mode)

;; 高亮括号配对
(show-paren-mode t)
(setq show-paren-style 'parenthesis)
(setq org-src-fontify-natively t)
;; 美化显示符号（elisp），比如lambda会显示为λ
(prettify-symbols-mode)
(global-prettify-symbols-mode 1)
;; 激活window-numbering
(window-numbering-mode 1)
;;中英文表格对齐问题

;n;(set-default-font "DejaVu Sans Mono 10")
;;(set-fontset-font "fontset-default" 'unicode"WenQuanYi Bitmap Song 12") ;;for linux
;;(set-fontset-font "fontset-default" 'unicode "宋体 12") ;; for windows
;;(add-hook 'php-mode-hook #'ede-php-autoload-mode)

;;存放编辑器接口产生的配置信息
(setq custom-file (expand-file-name "~/.jiangtao04/emacs.d/lisp/custom.el" user-emacs-directory))
(load-file custom-file)
