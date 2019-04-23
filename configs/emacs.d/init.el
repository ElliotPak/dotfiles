;; try to start maximised
(add-to-list 'default-frame-alist '(fullscreen . maximised))

;; remove splash screen, menu bar, tool bar
(setq inhibit-splash-screen t
      inhibit-startup-message t
      inhibit-startup-echo-area-message t)
(menu-bar-mode -1)
(tool-bar-mode -1)
(toggle-scroll-bar -1)
(desktop-save-mode 1)

;; tab width
(setq tab-width 4)

;; enable some global modes
(global-whitespace-mode)

;; globally bind some keys
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)

;; load package manager
(require 'package)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))

(setq package-enable-at-startup nil)
(package-initialize)

;; toggle transparency
(set-frame-parameter (selected-frame) 'alpha '(85 . 85))
(add-to-list 'default-frame-alist '(alpha . (85 . 85)))
(defun toggle-transparency ()
  (interactive)
  (let ((alpha (frame-parameter nil 'alpha)))
    (set-frame-parameter
     nil 'alpha
     (if (eql (cond ((numberp alpha) alpha)
                    ((numberp (cdr alpha)) (cdr alpha))
                    ;; Also handle undocumented (<active> <inactive>) form.
                    ((numberp (cadr alpha)) (cadr alpha)))
              100)
         '(85 . 85) '(100 . 100)))))
(global-set-key (kbd "C-c t") 'toggle-transparency)

;; auto load use-package
(unless (package-installed-p 'use-package)
    (package-refresh-contents)
    (package-install 'use-package))

(eval-when-compile
    (require 'use-package))

;; start loading packages
(use-package org
  :ensure t)

(use-package helm
  :ensure t
  :config
  (helm-mode 1)
  (add-to-list 'display-buffer-alist
    `(,(rx bos "*helm" (* not-newline) "*" eos)
      (display-buffer-in-side-window)
      (inhibit-same-window . t)
      (window-height . 0.4))))

(use-package popwin
  :ensure t
  :config
  (push '("^\*helm.+\*$" :regexp t) popwin:special-display-config)
    (add-hook 'helm-after-initialize-hook (lambda ()
       ;; (popwin:display-buffer helm-buffer t)
       (popwin-mode -1)))
    (add-hook 'helm-cleanup-hook (lambda () (popwin-mode 1))))

(use-package treemacs
  :ensure t
  :defer t
  :config
  (progn
    (use-package treemacs-evil
      :ensure t
      :demand t)
    (setq treemacs-indentation 2
	  treemacs-indentation-string " "
	  treemacs-no-png-images nil
	  treemacs-show-hidden-files t
	  treemacs-width 35)
    )
  :bind
  ( :map global-map
	 ("C-x M-f B" . treemacs-bookmark)
	 ([f8] . treemacs-toggle)))

(use-package spaceline
  :ensure t
  :init
  :config
  (require 'spaceline-config)
  (spaceline-spacemacs-theme))

(use-package linum-relative
  :ensure t
  :config
  (linum-relative-global-mode))

(use-package magit
  :ensure t)

(use-package flymd
  :ensure t)

(use-package markdown-mode
  :ensure t
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
    ("\\.md\\'" . markdown-mode)
    ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "multimarkdown"))

(add-hook 'markdown-mode-hook
	  (lambda ()
	    (auto-fill-mode)))

(use-package xresources-theme
  :ensure t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
	("1195d71dfd46c43492993a528336ac7f8c7400b4c58338e5b40329d6cad655b6" default)))
 '(fill-column 80)
 '(package-selected-packages
   (quote
	(xresources-theme use-package treemacs spacemacs-theme spaceline popwin markdown-mode magit linum-relative helm flymd evil-surround evil-leader evil-easymotion evil-commentary)))
 '(tab-width 4))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(whitespace-newline ((t (:foreground "gray20" :weight normal))))
 '(whitespace-space ((t (:foreground "gray20"))))
 '(whitespace-tab ((t (:foreground "gray20")))))

 ;; add some load paths
 (add-to-list 'load-path "~/.emacs.d/config")
 
;; load some other config files for packages
(load "init-evil.el")

;; scratch message - how we know nothing went wrong
(setq initial-scratch-message
      (concat ";; Happy hacking, " user-login-name "!"))
