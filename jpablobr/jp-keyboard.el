;;; -*- coding: utf-8-unix; -*-
;;jp-keyboard.el ---------------------------------------------------------

;;; - You know, like Readline.
(global-set-key "\C-\M-h" 'backward-kill-word)

;;; - Align your code in a pretty way.
(global-set-key (kbd "C-x \\") 'align-regexp)

;;; - Completion that uses many different methods to find options.
(global-set-key (kbd "M-=") 'dabbrev-expand)

;;; - Perform general cleanup.
(global-set-key (kbd "C-c n") 'cleanup-buffer)

;;; - Turn on the menu bar for exploring new modes
(global-set-key [f1] 'menu-bar-mode)

;;; - Use regex searches by default.
(global-set-key "\C-s" 'isearch-forward-regexp)
(global-set-key "\C-r" 'isearch-backward-regexp)
(global-set-key "\C-\M-s" 'isearch-forward)
(global-set-key "\C-\M-r" 'isearch-backward)

;;; - Jump to a definition in the current file. (This is awesome.)
(global-set-key "\C-x\C-i" 'ido-imenu)

;;; - File finding
(global-set-key (kbd "C-x M-f") 'ido-find-file-other-window)
(global-set-key (kbd "C-x C-M-f") 'find-file-in-project)
(global-set-key (kbd "C-x f") 'recentf-ido-find-file)
(global-set-key (kbd "C-x C-p") 'find-file-at-point)
(global-set-key (kbd "C-c y") 'bury-buffer)
(global-set-key (kbd "C-c r") 'revert-buffer)
(global-set-key (kbd "M-`") 'file-cache-minibuffer-complete)
(global-set-key (kbd "C-x C-b") 'ibuffer)

;;; - Window switching. (C-x o goes to the next window)
(windmove-default-keybindings) ;; Shift+direction
(global-set-key "\C-xO" (lambda () (interactive) (other-window -1))) ;; back one
(global-set-key "\C-x\C-o" (lambda () (interactive) (other-window 2))) ;; forward two

;;; - Start a regular shell if you prefer that.
(global-set-key (kbd "C-x C-m") 'shell)

;;; - Fetch the contents at a URL, display it raw.
(global-set-key (kbd "C-x u") 'view-url)

;;; - mark-whole-buffer
(global-set-key (kbd "C-x h") 'mark-whole-buffer)

;;; - Help should search more than just commands
(global-set-key (kbd "C-h a") 'apropos)

;;; - Should be able to eval-and-replace anywhere.
(global-set-key (kbd "C-c e") 'eval-and-replace)

;;; Git
(global-set-key (kbd "C-x g") 'magit-status)

;;; - Activate occur easily inside isearch
(define-key isearch-mode-map (kbd "C-o")
  (lambda () (interactive)
    (let ((case-fold-search isearch-case-fold-search))
      (occur (if isearch-regexp isearch-string (regexp-quote isearch-string))))))

;;; - Split Windows
(global-set-key [f6] 'split-window-horizontally)
(global-set-key [f7] 'split-window-vertically)
(global-set-key [f8] 'delete-window)

;;; - Some Mac-friendly key counterparts
(global-set-key (kbd "M-s") 'save-buffer)

(global-set-key [(meta up)] 'beginning-of-buffer)
(global-set-key [(meta down)] 'end-of-buffer)

(global-set-key [(meta shift right)] 'ido-switch-buffer)
(global-set-key [(meta shift up)] 'recentf-ido-find-file)
(global-set-key [(meta shift down)] 'ido-find-file)
(global-set-key [(control shift left)] 'previous-buffer)
(global-set-key [(control shift right)] 'next-buffer)
(global-set-key [(meta H)] 'delefte-other-windows)
(global-set-key [(meta N)] 'cleanup-buffer)

(global-set-key [(meta D)] 'backward-kill-word) ;; (meta d) is opposite

;; Texmate mode
(global-set-key [(control \})] 'textmate-shift-right)
(global-set-key [(control \{)] 'textmate-shift-left)
(global-set-key [(meta /)] 'comment-or-uncomment-region-or-line)
(global-set-key [(meta L)] 'textmate-select-line)

;;; Jump to matching parent
(global-set-key "%" 'match-paren)
(global-set-key [f1] 'man-follow)
(global-set-key [f4] 'speedbar-get-focus)
(global-set-key [f6] 'buffer-menu)
(global-set-key [next] 'pager-page-down)
(global-set-key [prior] 'pager-page-up)
(global-set-key "\C-cs" 'dictionary-search)
(global-set-key "\C-cm" 'dictionary-match-words)
(global-set-key (kbd "M-c") 'find-grep)
(global-set-key (kbd "C-x t") 'template-expand-template)
(global-unset-key "\C-l")
(global-set-key (kbd "C-l wd") 'w3m-definition-s)
(global-set-key (kbd "C-l ws") 'w3m-synonym-s)
(global-set-key (kbd "C-l wg") 'w3m-google-s)
(global-set-key (kbd "C-l gs") 'github-s)
(global-set-key (kbd "C-l gu") 'github-user)
(global-set-key (kbd "C-l bu") 'browse-url)
(global-set-key (kbd "C-l gt") 'g-translate)
(global-set-key (kbd "C-l ie") 'insert-email)
(global-set-key (kbd "C-l in") 'insert-name)
(global-set-key (kbd "C-l id") 'insert-date)
(global-set-key (kbd "C-l eb") 'eval-buffer)
(global-set-key (kbd "C-l mb") 'menu-bar-mode)
(global-set-key [(meta I)] 'ispell-region)
(global-set-key [(meta F)] 'fill-region)
(global-set-key [(meta P)] 'mouse-buffer-menu)
(global-set-key [(meta up)] 'beginning-of-buffer)
(global-set-key [(meta down)] 'end-of-buffer)
(global-set-key [(meta p)] 'beginning-of-buffer)
(global-set-key [(meta n)] 'end-of-buffer)
(global-set-key [(meta G)] 'google-s)
(global-set-key "\C-x+" 'find-file-as-root)
(global-set-key "\C-x!" 'toggle-alternate-file-as-root)

(provide 'jp-keyboard)
