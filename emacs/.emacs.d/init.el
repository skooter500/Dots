;; ui changes ;;

(tool-bar-mode -1)
;;(menu-bar-mode -1) ;; uncomment once I've gotten more confident with emacs
(scroll-bar-mode -1)



;; indentation and whitespace

;; use spaces instead of tabs in all programming modes
(add-hook 'prog-mode-hook (lambda ()
                            (setq indent-tabs-mode nil)))

(setq-default tab-width 4)

;; TAB only indents when point is the start of a line
(setq-default tab-always-indent nil)

;; newlines don't indent the previous line
;;(setq-default electric-indent-inhibit t)

;; backspace deletes all whitespace at once
;; consider writing/stealing a backspace-to-tab-stop function
(setq backward-delete-char-untabify-method 'hungry)

(setq-default show-trailing-whitespace t)
