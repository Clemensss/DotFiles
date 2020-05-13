(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("elpa" . "http://elpa.gnu.org/packages/"))
(package-initialize)

;; beautiful vim mode 
(use-package evil
  :ensure t
  :config
  (evil-mode 1)

  ;; More configuration goes here
  (use-package evil-leader
    :ensure t
    :config
    (global-evil-leader-mode))

  (use-package evil-surround
    :ensure t
    :config
    (global-evil-surround-mode))

  (use-package evil-indent-textobject
    :ensure t)

  )

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("aded61687237d1dff6325edb492bde536f40b048eab7246c61d5c6643c696b7f" "4cf9ed30ea575fb0ca3cff6ef34b1b87192965245776afa9e9e20c17d115f3fb" "2809bcb77ad21312897b541134981282dc455ccd7c14d74cc333b6e549b824f3" "0fffa9669425ff140ff2ae8568c7719705ef33b7a927a0ba7c5e2ffcfac09b75" "12dd37432bb454355047c967db886769a6c60e638839405dad603176e2da366b" default)))
 '(line-number-mode nil)
 '(menu-bar-mode nil)
 '(package-selected-packages
   (quote
    (gruvbox-theme solarized-theme list-packages-ext company-ctags slime helm company evil)))
 '(scroll-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#1d2021" :foreground "#fdf4c1" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 140 :width normal :foundry "PfEd" :family "Hack")))))

;;default font
(add-to-list 'default-frame-alist '(font . "Hack-14"))
;;fuck this tool bar shit
(tool-bar-mode -1)
;;switch windows
(windmove-default-keybindings)


;;(require 'helm-config)

(require 'ido)
   (ido-mode t)

;;load theme
(load-theme 'gruvbox-dark-hard t)
(setq redisplay-dont-pause t
  scroll-margin 1
  scroll-step 1
  scroll-conservatively 10000
    scroll-preserve-screen-position 1)

;;gives me the sweet line numbers 
(add-hook 'prog-mode-hook 'linum-mode)

;;slime implementation for sbcl
  (load (expand-file-name "~/quicklisp/slime-helper.el"))
  ;; Replace "sbcl" with the path to your implementation
  (setq inferior-lisp-program "sbcl")

