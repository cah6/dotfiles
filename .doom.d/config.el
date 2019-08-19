;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here

;; Transparent editor
;; (set-frame-parameter (selected-frame) 'alpha '(<active> . <inactive>))
;; (set-frame-parameter (selected-frame) 'alpha <both>)
;; (set-frame-parameter (selected-frame) 'alpha '(85))
;; (add-to-list 'default-frame-alist '(alpha . (85)))

;; Set transparency of emacs
(defun transparency (value)
  "Sets the transparency of the frame window. 0=transparent/100=opaque"
  (interactive "nTransparency Value 0 - 100 opaque:")
  (set-frame-parameter (selected-frame) 'alpha value))

;; Test out fill column indicator
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Fonts
(setq doom-font (font-spec :family "Fira Code" :size 16))
;; (setq doom-big-font (font-spec :family "Fira Code" :size 22))
;; (add-hook! 'window-setup-hook #'doom-big-font-mode)

(require 're-builder)
(setq reb-re-syntax 'string)

(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)

(global-visual-line-mode 1)

;; (require 'lsp-ui)
;; (add-hook! 'lsp-mode-hook 'lsp-ui-mode)
;; (require 'lsp)
;; (require 'lsp-haskell)
;; (add-hook! 'haskell-mode-hook 'flycheck-mode)
;; (add-hook! 'haskell-mode-hook #'lsp)

;; (use-package! dante
;;   :ensure t
;;   :after haskell-mode
;;   :commands 'dante-mode
;;   :init
;;   (add-hook 'haskell-mode-hook 'flycheck-mode)
;;   ;; OR:
;;   ;; (add-hook 'haskell-mode-hook 'flymake-mode)
;;   (add-hook 'haskell-mode-hook 'dante-mode)
;;   )
