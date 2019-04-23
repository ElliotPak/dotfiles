(defun elliot-config-evil-leader ()
  "Configures evil leader mode"
  (evil-leader/set-leader "<SPC>")
  (evil-leader/set-key
   "0" 'delete-window
   "2" 'split-window-below
   "3" 'split-window-right
   "b" 'helm-mini
   "B" 'helm-bookmarks
;;   "e"  
   "f" 'helm-find-files
   "F" 'find-file
   "g" 'magit-status
   "n" (lambda() (interactive) (treemacs-bookmark 'Notes))
   "t" 'treemacs-toggle
   "s" 'split-window-below
   "T" 'treemacs-bookmark
   "v" 'split-window-right
   "w" 'save-buffer
   "x" 'helm-M-x
   "," 'other-window))

(use-package evil
  :ensure t
  :config

  (use-package evil-leader
    :ensure t
    :config
    (global-evil-leader-mode)
    (elliot-config-evil-leader))

  (use-package evil-surround
    :ensure t
    :config
    (global-evil-surround-mode))

  (use-package evil-easymotion
    :ensure t
    :config
    (evilem-default-keybindings ","))

  (use-package evil-commentary
    :ensure t
    :config
    (evil-commentary-mode))

  (evil-mode t)

  (dolist (mode '(ag-mode
		  treemacs-mode))
   (add-to-list 'evil-emacs-state-modes mode)))
