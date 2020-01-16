(require 'init-elpa)

(require-package 'paredit)

(require 'paredit)

(require 'geiser)
(setq geiser-racket-binary "c:/Program Files/Racket/Racket.exe")

(load (expand-file-name "c:/Users/mike.southron/quicklisp/slime-helper.el"))
(setq inferior-lisp-program "c:/SBCL-2.0.0/sbcl")

;;(setq inferior-lisp-program "java -jar C:/abcl/abcl.jar")

(add-hook 'lisp-mode-hook '(lambda ()
                              (unless (get-process "SLIME Lisp")
                                (slime))))

(autoload 'enable-paredit-mode "paredit" "Turn on pseudo-structural editing of Lisp code." t)
(add-hook 'emacs-lisp-mode-hook       #'enable-paredit-mode)
(add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
(add-hook 'ielm-mode-hook             #'enable-paredit-mode)
(add-hook 'lisp-mode-hook             #'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook #'enable-paredit-mode)
(add-hook 'scheme-mode-hook           #'enable-paredit-mode)
(add-hook 'lisp-mode-hook             #'slime-mode)

(provide 'init-cl)
;;; init-cl.el ends here
