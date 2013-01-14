jump-to-line.el
=====================

Jump to line number at point.
Can return to the position before the jump.

## Install
### melpa
Comming soon.

### auto-install
```elisp
(auto-install-from-url "https://raw.github.com/ongaeshi/jump-to-line/master/jump-to-line.el")
````

## Initial setting
```elisp:.eamcs.d/init.el
(require 'jump-to-line)

;; Set of key bindings
(global-set-key (kbd "C-c C-j") 'jump-to-line) ; Jump
(global-set-key (kbd "C-c C-b") 'jtl-back)     ; Back
```

## Lisence
GPLv3

----
Copyright (C) 2013 ongaeshi <<ongaeshi0621@gmail.com>>
