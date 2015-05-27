;;─────────────────────────────────────────────────────────────────────────────
;; Add Emmet support
;;─────────────────────────────────────────────────────────────────────────────


;; https://github.com/smihica/emmet-mode
(use-package emmet-mode
  :ensure t
  :diminish emmet-mode
  :init
  (setq
   emmet-preview-default nil
   emmet-move-cursor-between-quotes t)
  (add-hook 'css-mode-hook 'emmet-mode)
  (add-hook 'sgml-mode-hook 'emmet-mode)
  (add-hook 'web-mode-hook 'emmet-mode)
  :bind
  (("<M-left>" . emmet-prev-edit-point)
   ("<M-right>" . emmet-next-edit-point)))


;;─────────────────────────────────────────────────────────────────────────────
;; End init-emmet.el
;;─────────────────────────────────────────────────────────────────────────────


(provide 'init-emmet)