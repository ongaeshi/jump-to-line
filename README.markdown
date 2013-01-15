jump-to-line.el
=====================

Jump to line number at point.
Back to position before the jump.

## Examples of jump
```lisp
/path/to/a.txt:5 ; Jump to /path/to/a.txt, line 5 (Ruby style)
../a.txt:5       ; Relative path
a.txt            ; Only filename
a.txt(1,2)       ; C# style
a.txt, line 1    ; Python
a.txt line 1     ; Perl
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
(global-set-key (kbd "C-c C-j") 'jump-to-line) ; Jump
(global-set-key (kbd "C-c b")   'jtl-back)     ; Back
```

## Lisence
GPLv3

----
Copyright (C) 2013 ongaeshi <<ongaeshi0621@gmail.com>>
