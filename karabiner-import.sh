#!/bin/sh

cli=/Applications/Karabiner.app/Contents/Library/bin/karabiner

$cli set repeat.initial_wait 250
/bin/echo -n .
$cli set remap.jis_command2eisuukana_prefer_eisuukana 1
/bin/echo -n .
$cli set general.disable_internal_keyboard_if_external_keyboard_exsits 1
/bin/echo -n .
$cli set remap.jis_command2eisuukana_prefer_command 1
/bin/echo -n .
$cli set repeat.wait 33
/bin/echo -n .
$cli set remap.simple_vi_mode 1
/bin/echo -n .
$cli set remap.fkeys_to_consumer_f7 1
/bin/echo -n .
$cli set remap.mouse_keys_mode_2 1
/bin/echo -n .
/bin/echo
