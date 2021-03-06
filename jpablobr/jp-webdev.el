;;; -*- coding: utf-8-unix; -*-
;;jp-webdev.el ---------------------------------------------------------
;;; - Web development configs
;;;

;;; ---------------------------------------------------------
;;; - nXML
;;;

(load "~/.emacs.d/vendor/nxhtml/autostart.el")

(dolist (i '("xml" "xsd" "rng" "xsl" "xslt" "svg" "rss" "html" "php"))
  (add-to-list 'auto-mode-alist (cons (concat "\\." i "\\'") 'nxhtml-mode)))

;;; ---------------------------------------------------------
;;; - HTML, JavaScript, CSS Setup, YAML
;;;

(autoload 'css-mode          "css-mode" "Mode for editing CSS files" t)

(setq auto-mode-alist  (cons '("\\.css$" . css-mode) auto-mode-alist))
(setq auto-mode-alist  (cons '("\\.js$" .  js2-mode) auto-mode-alist))

(add-hook 'html-mode-hook
          '(lambda()
            (local-set-key (kbd "<return>") 'newline-and-indent)))

(add-hook 'css-mode-hook
          '(lambda()
            (setq css-indent-offset 2)
            (setq css-electric-brace-behavior t)
            (setq css-electric-semi-behavior t)))

;;; ---------------------------------------------------------
;;; - HTML/mumamo setup
;;;
(add-to-list 'load-path "~/.emacs.d/vendor/nxhtml/util")
(autoload 'rng-clear-overlays "rng-valid" nil t)
(custom-set-faces
 '(mumamo-background-chunk-major ((((class color) (min-colors 88) (background dark)) nil)))
 '(mumamo-background-chunk-submode ((((class color) (min-colors 88) (background dark)) nil)))
 '(mumamo-background-chunk-submode1 ((((class color) (min-colors 88) (background dark)) nil)))
 '(mumamo-background-chunk-submode2 ((((class color) (min-colors 88) (background dark)) nil)))
 '(mumamo-background-chunk-submode3 ((((class color) (min-colors 88) (background dark)) nil)))
 '(mumamo-background-chunk-submode4 ((((class color) (min-colors 88) (background dark)) nil))))

;;; ---------------------------------------------------------
;;; - CSS
;;;
(require 'css-mode)
(autoload 'css-mode "css-mode" "Mode for editing CSS files" t)
(add-hook 'css-mode-hook
          (lambda()
            (local-set-key (kbd "<return>") 'newline-and-indent)))

;;; ---------------------------------------------------------
;;; - Apache
;;;
(autoload 'apache-mode "apache-mode" nil t)
(dolist (i '("\\.htaccess\\'" "httpd\\.conf\\'" "srm\\.conf\\'"
             "access\\.conf\\'" "sites-\\(available\\|enabled\\)/"))
  (add-to-list 'auto-mode-alist (cons i  'apache-mode)))

(add-hook 'apache-mode-hook
          '(lambda()
            (set (make-local-variable 'apache-indent-level) 2)))

(provide 'jp-webdev)