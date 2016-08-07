#!/bin/sh

cli=/Applications/Karabiner.app/Contents/Library/bin/karabiner

$cli set remap.jis_command2eisuukana_prefer_command 1
/bin/echo -n .
$cli set remap.jis_command2eisuukana_prefer_eisuukana 1
/bin/echo -n .
$cli set remap.simple_vi_mode 1
/bin/echo -n .
$cli set repeat.initial_wait 200
/bin/echo -n .
$cli set repeat.wait 13
/bin/echo -n .
/bin/echo
