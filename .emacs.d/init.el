;; -*- lexical-binding: t; -*-

(use-package ivy
  :config
  (ivy-mode 1))

(use-package smalltalk-mode
  :config
  (add-hook 'smalltalk-mode-hook 'smartparens-mode))

(use-package gst-mode
  :commands (smalltalk-filein-buffer)
  :config
  ;; avoid passing --emacs-mode to gst
  ;; his does not seem to be useful to me
  ;; so we simply redefine this function
  (defun smalltalk--parse-command (&optional str)
    '("gst")))

(use-package whitespace-cleanup-mode
  :config
  (global-whitespace-cleanup-mode))

(use-package paredit
  :init
  (dolist (hook '(emacs-lisp-mode-hook
		  eval-expression-minibuffer-setup-hook))
    (add-hook hook #'paredit-mode)))
