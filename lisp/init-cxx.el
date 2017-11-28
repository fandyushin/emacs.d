(use-package cc-mode
  :config
  (setq c-default-style "linux") ;; set style to "linux"
  (setq gdb-many-windows t ;; use gdb-many-windows by default
	gdb-show-main t
	c-basic-offset 4
	tab-width 4
	indent-tabs-mode t))

(use-package irony
  :config
  (add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options))

(use-package company-irony
  :after company-mode
  :config
  (add-to-list 'company-backends 'company-irony))

(use-package company-irony-c-headers
  :after company-mode
  :config
  (add-to-list
    'company-backends '(company-irony-c-headers company-irony)))

(use-package company-c-headers
  :config
  (add-to-list 'company-backends 'company-c-headers))

(use-package company-c-headers
  :config
  (add-to-list 'company-backends 'company-c-headers))


(use-package rtags
  :config
  (setq rtags-autostart-diagnostics t)
  (setq rtags-completions-enabled t)
  (rtags-diagnostics)
  (rtags-enable-standard-keybindings)
  (push 'company-rtags company-backends))

(provide 'init-cxx)
