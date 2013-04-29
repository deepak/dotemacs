;;; using GNU Emacs 24.3.50.1
;;; on mac osx
;;; installed with homebrew
;;; brew install emacs --cocoa --srgb --HEAD
;;; local customizations in deepak.el

(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

;; starter-kit-bindings
(defvar my-packages '(starter-kit 
		      starter-kit-ruby 
		      starter-kit-eshell
		      markdown-mode
		      yaml-mode
		      marmalade
                      maxframe
                      exec-path-from-shell
                      coffee-mode
                      zenburn-theme 
                      zen-and-art-theme
                      twilight-theme))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))
