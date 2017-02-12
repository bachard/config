
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(add-to-list 'custom-theme-load-path "~/.emacs.d/el-get")

;; Simple package names
;; (el-get-bundle color-moccur)
(el-get-bundle jedi)
(el-get-bundle virtualenvwrapper)

;; Locally defined recipe
;; (el-get-bundle yaicomplete
;;   :url "https://github.com/tarao/elisp.git"
;;   :features yaicomplete)

;; With initialization code
;; (el-get-bundle zenburn-theme)
;;   :url "https://raw.githubusercontent.com/bbatsov/zenburn-emacs/master/zenburn-theme.el"

;; (el-get-bundle ample-theme
;; 	       :url "https://raw.githubusercontent.com/jordonbiondo/ample-theme/master/ample-theme.el"
;; 	       (load-theme 'ample t t))

(load-theme 'wombat t)

(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

(venv-initialize-interactive-shells) ;; if you want interactive shell support
(venv-initialize-eshell) ;; if you want eshell support
