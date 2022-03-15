(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ac-auto-start t)
 '(ac-expand-on-auto-complete t)
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(global-auto-complete-mode t)
 '(package-selected-packages
   '(treemacs multi-line go-fill-struct go-gen-test go-guru go-impl go-rename go-tag godoctor lsp-mode company-go lsp-ui company projectile use-package dashboard vue-mode ## lsp-dart go-mode markdown-mode))
 '(speedbar-show-unknown-files t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(icomplete-first-match ((t (:weight bold)))))

    ;; load emacs 24's package system. Add MELPA repository.
    (when (>= emacs-major-version 24)
    (require 'package)
    (add-to-list
    'package-archives
    ;; '("melpa" . "http://stable.melpa.org/packages/") ; many packages won't show if using stable
    '("melpa" . "https://melpa.org/packages/")
    t))

    ;;(require 'dashboard)
    ;;(dashboard-setup-startup-hook)
    ;;配置dashboard
    (use-package dashboard
    :ensure t
    :config
    ;;(setq dashboard-set-init-info t)
    (setq dashboard-init-info "")
    (setq dashboard-banner-logo-title nil)
    (setq dashboard-items '((recents  . 5)
                        (bookmarks . 10)
                    ;;项目已取消(projects . 10)
                        ))
    (setq dashboard-item-names '(
    ("Bookmarks:" . "书签：")
    ("Projects:" . "项目：")
    ("Recent Files:" . "最近打开文件：")))
    (setq dashboard-set-footer nil)
    (dashboard-setup-startup-hook))

    ;;引入目录
    (add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp/"))

    ;; Make verbatim with highlight text background.
    ;;下方状态栏脚本
    ;;(require 'awesome-tray)
    ;;(awesome-tray-mode 2)

    ;;取消光标闪烁
    (blink-cursor-mode 0)

    ;;go代码补全
    (require 'go-autocomplete)
    (require 'auto-complete-config)
    (set (make-local-variable 'company-backends) '(company-go))
    ;;(company-mode)

    ;;自动恢复关闭前的buffer
    ;;

    ;;启动后自动分屏
    ;;(split-window-below)
    ;;(split-window-right)

    ;;自动补全括号
    (electric-pair-mode t)

    ;;不显示工具栏、菜单栏、滚动条
    (tool-bar-mode 0)
    (menu-bar-mode 0)
    ;;(scroll-bar-mode 0)

    ;;显示行号列号
    (line-number-mode 1)
    (column-number-mode 1)

    ;;设置初始窗口大小
    (when window-system (set-frame-size (selected-frame) 80 80))

    ;;speedbar显示所有文件
    
    ;;自动补全区分大小写，按S再回车不会出s开头的补全！
    (setq ac-ignore-case nil)

    ;;(go自动补全)
    (require 'go-autocomplete)
    (require 'auto-complete-config)
    (ac-config-default)

    ;; 全局显示行号
    (global-linum-mode 1)

    ;; 默认开启全屏
    ;;(setq initial-frame-alist (quote ((fullscreen . maximized))))
