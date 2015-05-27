;;─────────────────────────────────────────────────────────────────────────────
;; Add support for project management
;;─────────────────────────────────────────────────────────────────────────────


;; https://github.com/bbatsov/projectile
(use-package projectile
  :ensure t
  :diminish projectile-mode
  :init
  (setq
   projectile-enable-caching t
   projectile-remember-window-configs t
   projectile-mode-line '(:eval (format " %s" (projectile-project-name))))
  :config

  (use-package helm-projectile
    :config
    (helm-projectile-on))
  (projectile-global-mode))


;;─────────────────────────────────────────────────────────────────────────────
;; End init-projectile.el
;;─────────────────────────────────────────────────────────────────────────────


(provide 'init-projectile)