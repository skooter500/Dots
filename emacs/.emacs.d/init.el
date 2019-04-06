;;;; Startup Screen

(setq inhibit-startup-screen t)


;;;; User Interface

(tool-bar-mode -1)
;;(menu-bar-mode -1) ;; uncomment once I've gotten more confident with emacs
(scroll-bar-mode -1)

(column-number-mode)



;;;; Indentation and Whitespace

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



;;;; Auto-saves and Backups
;; See http://pragmaticemacs.com/emacs/auto-save-and-backup-every-save/

(defvar mike-auto-save-location (expand-file-name "~/.emacs.d/auto-saves/")
  "Base directory for auto save files.")
(defvar mike-backup-location (expand-file-name "~/.emacs.d/backups/")
  "Base directory for backup files.")

;; set default auto-save and backup locations
(setq auto-save-file-name-transforms
      `((".*" ,mike-auto-save-location t)))
(setq backup-directory-alist
      `((".*" . ,(expand-file-name "per-save/" mike-backup-location))))

(setq
 backup-by-copying t        ; don't clobber symlinks
 kept-new-versions 1000     ; keep n latest versions
 kept-old-versions 0        ; don't bother with old versions
 delete-old-versions t      ; don't ask about deleting old versions
 version-control t          ; number backups
 vc-make-backup-files t)    ; backup version controlled files

(defvar mike-backup-file-size-limit (* 5 1024 1024)
  "Maximum size of a file (in bytes) that should be copied at each savepoint.")

(defun mike-backup-every-save ()
  "Backup files every time they are saved, as well as at the start of each session"

  ;; when at start of session
  (when (not buffer-backed-up)
    ;; settings for per-session backup
    (let ((backup-directory-alist
           `((".*" . ,(expand-file-name "per-session/" mike-backup-location))))
          (kept-new-versions 1000))

      ;; make a per-session backup
      (if (<= (buffer-size) mike-backup-file-size-limit)
          (progn
            (message "Made per-session backup of %s" (buffer-name))
            (backup-buffer))
        (warn "Buffer %s too large to backup - increase value of mike-backup-file-size-limit" (buffer-name)))))

  ;; always
  (let ((buffer-backed-up nil))
    (if (<= (buffer-size) mike-backup-file-size-limit)
        (progn
          (message "Made per-save backup of %s" (buffer-name))
          (backup-buffer))
      (warn "Buffer %s too large to backup - increase value of mike-backup-file-size-limit" (buffer-name)))))

(add-hook 'before-save-hook 'mike-backup-every-save)



;;;; Symbolic links

;; honestly, I don't know the implications of this one
;; I just want the yes/no prompt gone
(setq vc-follow-symlinks t)
