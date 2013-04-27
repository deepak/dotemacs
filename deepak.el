;; the blinking cursor is nothing, but an annoyance
(blink-cursor-mode -1)

;; disable startup screen
(setq inhibit-startup-screen t)

;; mode line settings
(line-number-mode t)
(column-number-mode t)
(size-indication-mode t)

;; load-theme uses deftheme - a emacs 24 feature
(load-theme 'zenburn t)
;; (load-theme 'zen-and-art t)
;; (load-theme 'twilight t) ;; hides comments. irritating but interesting 

;;; older color-themes - pre emacs 24
;;; (require `color-theme)
;;; color-themem deprecated by emacs 24 deftheme
;; (color-theme-calm-forest)
;; (color-theme-jsc-dark)
;; (color-theme-midnight)
;; (color-theme-tty-dark)
;; (color-theme-ld-dark)
;; (color-theme-hober)
;; (color-theme-dark-laptop)
;; (color-theme-retro-green)
;; (color-theme-pok-wob)
;; check github and railscast theme as well
