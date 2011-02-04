;;; -*- coding: utf-8-unix; -*-
;;jp-theme.el ---------------------------------------------------------
;;; - Theme Sat 2010-08-28 - 10:06 AM
;;;
(load-file "~/.emacs.d/vendor/color-theme-twilight.el")
(load-file "~/.emacs.d/vendor/color-theme-tangotango/color-theme-tango.el")
(load-file "~/.emacs.d/vendor/color-theme-tangotango/color-theme-tangotango.el")
(load (concat dotfiles-dir "vendor/theme.el"))
(color-theme-tangotango) ;; (color-theme-twilight) (color-theme-topfunky)

;;; ----------------------------------------------------------------------------
;;; - Transparency
;;; - Also see (transparency) and (reset-trasnparency) helper functions
;;;
;; (set-frame-parameter (selected-frame) 'alpha '(85 85))
;; (add-to-list 'default-frame-alist '(alpha 85 85))

;;; ---------------------------------------------------------
;;; - maxframe
;;;
(add-to-list  'load-path "~/.emacs.d/vendor/maxframe")
(require 'maxframe)
(add-hook 'window-setup-hook 'maximize-frame t)
;;(add-hook 'window-setup-hook 'ecb-redraw-layout t)

;;; ---------------------------------------------------------
;;; - customization
;;;
(custom-set-faces
 '(default ((t (:stipple nil
                :background "black"
                :foreground "white"
                :inverse-video nil
                :box nil
                :strike-through nil
                :overline nil
                :underline nil
                :slant normal
                :weight normal
                :height 90 normal))))

 '(autoface-default ((t (:inherit default
                         :background "black"
                         :foreground "white"
                         :inverse-video nil
                         :box nil
                         :strike-through nil
                         :overline nil
                         :underline nil
                         :slant normal
                         :weight normal
                         :height 90
                         :width normal)))))
(provide 'jp-theme)