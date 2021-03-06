;;; -*- coding: utf-8-unix; -*-
;;jp-yasnippet.el ---------------------------------------------------------
;;; - Yasnippets
;;;
;; Snippets
(setq snippets-dir (concat vendor-dir "/snippets"))
(add-to-list 'load-path snippets-dir)
(add-to-list 'load-path (concat snippets-dir "/yasnippet-dot-el"))

;; (when (require 'espresso nil t)
;;   (add-hook 'js2-mode-hook
;;           '(lambda ()
;;              (setq yas/mode-symbol 'espresso-mode))))

(require 'yasnippet)
(require 'dropdown-list)
(setq yas/prompt-functions '(  yas/dropdown-prompt
                               yas/completing-prompt
                               yas/ido-prompt))

(setq yas/root-directory (concat snippets-dir "/yasnippets-jpablobr"))
(yas/load-directory yas/root-directory)

(add-hook 'python-mode-hook 'yas/minor-mode-on)
(add-hook 'emacs-lisp-mode-hook 'yas/minor-mode-on)
(add-hook 'ruby-mode-hook 'yas/minor-mode-on)
(add-hook 'clojure-mode-hook 'yas/minor-mode-on)
(add-hook 'scheme-mode-hook 'yas/minor-mode-on)
(add-hook 'org-mode-hook 'yas/minor-mode-on)
(add-hook 'haskell-mode-hook 'yas/minor-mode-on)
(add-hook 'css-mode-hook 'yas/minor-mode-on)
(add-hook 'nxhtml-mode-hook 'yas/minor-mode-on)
(add-hook 'haml-mode-hook 'yas/minor-mode-on)
(add-hook 'sass-mode-hook 'yas/minor-mode-on)
(add-hook 'jse-mode-hook 'yas/minor-mode-on)
(add-hook 'yaml-mode-hook 'yas/minor-mode-on)
(add-hook 'lisp-mode-hook 'yas/minor-mode-on)
(add-hook 'shell-mode-hook 'yas/minor-mode-on)
(add-hook 'erlang-mode-hook 'yas/minor-mode-on)
(add-hook 'cperl-mode-hook 'yas/minor-mode-on)
(add-hook 'perl-mode-hook 'yas/minor-mode-on)
(add-hook 'text-mode-hook 'yas/minor-mode-on)
(add-hook 'fundamental-mode-hook 'yas/minor-mode-on)
(add-hook 'latex-mode-hook 'yas/minor-mode-on)
(add-hook 'tex-mode-hook 'yas/minor-mode-on)
;;; ---------------------------------------------------------
;;; - hooks for different modes on specific modes
;;;
(yas/define-snippets  'nxhtml-mode nil  'html-mode)
(yas/define-snippets  'js2-mode nil  'javascript-mode)
(yas/define-snippets  'espresso-mode nil  'javascript-mode)

(add-hook 'cperl-mode-hook
          '(lambda ()
             (setq yas/mode-symbol 'perl-mode)))

(add-hook 'inf-perl-mode-hook
          '(lambda ()
             (setq yas/mode-symbol 'perl-mode)))

(add-hook 'org-mode-hook
          '(lambda ()
             (setq yas/mode-symbol 'text-mode)))

(add-hook 'text-mode-hook
          '(lambda ()
             (setq yas/mode-symbol 'org-mode)))

(add-hook 'fundamental-mode-hook
          '(lambda ()
             (setq yas/mode-symbol 'text-mode)))

(add-hook 'js2-mode-hook
          '(lambda ()
             (setq yas/mode-symbol 'espresso-mode)))

(provide 'jp-yasnippet)