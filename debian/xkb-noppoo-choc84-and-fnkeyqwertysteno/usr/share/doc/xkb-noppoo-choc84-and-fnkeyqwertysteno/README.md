# xkb-noppoo-choc84-and-fnkeyqwertysteno

This package contains two XKB geometry definitions for the Noppoo
Choc-84 / N-Key-USB keyboard, aka Choc Mini. One of them is for the
keyboard with keys in normal orientation, and the other is drawn with
the function key's caps rotated 180 degrees so that the steep sides of
the keycaps face each other, causing the gap between vertically
aligned keys to be smaller, so that two of them can more easily be
pressed simultaneously, to facilitate stenographic input using
Plover. The 4 corresponding vowel keys are drawn turned 90 degrees.

There is also a keyboard symbol mapping called fnkeyqwertysteno that
puts the qwertysteno keys onto the function and number row keys, so
that it becomes possible to use this keyboard to practice steno on
sites like http://qwertysteno.com and also to use Plover without
having to redefine it's internal keymap.

This package is probably not especially useful unless you own either
this particular keyboard, or a keyboard that has the function and
number keys arranged in such a way that it will be possible to utilize
them for steno input.

Sample usage:

$ setxkbmap fnkeyqwertysteno; plover; setxkbmap us


Plover, a stenographic input method that can use an NKRO qwerty
keyboard as well as take input from computer-attached steno machines,
may be located at: http://openstenoproject.org

There you will also find links to the site where you can purchase the
laser cut keytoppers, in case you prefer those to the naked keycaps.

