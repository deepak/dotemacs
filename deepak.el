;; mode line settings
(line-number-mode t)
(column-number-mode t)
(size-indication-mode t)

;;; TODO: check super. meta, left-right etc keys
;;; setting below does not override existing. so two alt keys
;; (setq mac-command-modifier 'alt)

;;; set PATH from the login shell
(eval-after-load 'exec-path-from-shell
  '(progn
     (when (memq window-system '(mac ns))
       (exec-path-from-shell-initialize))))

;; load-theme uses deftheme - a emacs 24 feature
(load-theme 'zenburn t)

;;; Deprecated. older color-themes - pre-emacs-24
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

(defvar default-font "Monaco-17" "default Emacs font")
(set-frame-font default-font nil t)

;; Font size
(define-key global-map (kbd "C-+") 'text-scale-increase)
(define-key global-map (kbd "C--") 'text-scale-decrease)

;; maximize frame
(setq mf-max-width 1910)  ;; Pixel width of main monitor.
(setq mf-max-height 1112)  ;; Pixel width of main monitor.

(defvar maxframe-maximized-p nil "maxframe is in fullscreen mode")

(defun toggle-maxframe ()
  "Toggle maximized frame"
  (interactive)
  (setq maxframe-maximized-p (not maxframe-maximized-p))
  (cond (maxframe-maximized-p (maximize-frame))
        (t (restore-frame))))

(define-key global-map [(s return)] 'toggle-maxframe)
(add-hook 'window-setup-hook 'toggle-maxframe t)
