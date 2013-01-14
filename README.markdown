jump-to-line.el
=====================

Jump to line.

## Install
melpa
auto-install

## Initial setting
```elisp:.eamcs.d/init.el
(require 'jump-to-line)

;; Set of key bindings
(global-set-key (kbd "C-c C-j") 'jump-to-line) ; Jump
(global-set-key (kbd "C-c C-b") 'jtl-back)     ; Back
```

## Optional setting
```elisp:.eamcs.d/init.el
;; Set candidates directories (optional)
;; jtl-directories
```

## Lisence
GPLv3

----
Copyright (C) 2013 ongaeshi <<ongaeshi0621@gmail.com>>
