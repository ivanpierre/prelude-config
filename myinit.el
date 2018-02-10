(setq blink-cursor-mode t)
(setq column-number-mode t)
(setq custom-enabled-themes 'wheatgrass)

(setq display-time-mode t)

; (font-use-system-font t)
; (global-ede-mode t)
;(package-selected-packages
;   (quote
;    (dired-k direk+ highlight monokai-alt-theme rainbow-delimiters company which-key
;             cider-eval-sexp-fu cider-decompile cider)))

(print "Starting myinit.el")
(setq save-place-mode t)
(setq show-paren-mode t)
(setq size-indication-mode t)
(setq xterm-mouse-mode t)

(setq prelude-guru nil)

(global-unset-key (vector (list 'shift 'left)))
(global-unset-key (vector (list 'shift 'right)))
(global-unset-key (vector (list 'shift 'up)))
(global-unset-key (vector (list 'shift 'down)))

(setq shift-selection-mode t)

(global-set-key (kbd "C-c <left>")  'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <up>")    'windmove-up)
(global-set-key (kbd "C-c <down>")  'windmove-down)

(cua-mode t)
(setq cua-auto-tabify-rectangles nil) ;; Don't tabify after rectangle commands
(transient-mark-mode 1) ;; No region when it is not highlighted
(setq cua-keep-region-after-copy t) ;; Standard Windows behaviour

;; terminal mode settings
(unless window-system
  (xterm-mouse-mode 1)
  (menu-bar-mode 1)
  (setq select-enable-clipboard t
        interprogram-paste-function 'x-cut-buffer-or-selection-value)
  (global-set-key [mouse-4] '(lambda ()
                               (interactive)
                               (scroll-down 1)))
  (global-set-key [mouse-5] '(lambda ()
                               (interactive)
                               (scroll-up 1))))
