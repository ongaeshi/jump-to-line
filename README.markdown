jump-to-line.el
=====================

Jump to line number at point.

Back to position before the jump.

```
[Example]
/path/to/a.txt:5
./a.txt:5
 a.txt
```

## Install
### melpa
Comming soon.

### auto-install
```lisp
(auto-install-from-url "https://raw.github.com/ongaeshi/jump-to-line/master/jump-to-line.el")
````

## Initial setting
```lisp
(require 'jump-to-line)

;; Set of key bindings
(global-set-key (kbd "C-c C-j") 'jump-to-line) ; Jump
(global-set-key (kbd "C-c b")   'jtl-back)     ; Back
```

## Lisence
GPLv3

----
Copyright (C) 2013 ongaeshi <<ongaeshi0621@gmail.com>>
