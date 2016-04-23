#!/bin/sh

cli=/Applications/Karabiner.app/Contents/Library/bin/karabiner

$cli set option.extra_cursor_optionL_kjhl 1
/bin/echo -n .
$cli set repeat.wait 20
/bin/echo -n .
$cli set repeat.initial_wait 200
/bin/echo -n .
$cli set option.vimode_control_gG 1
/bin/echo -n .
$cli set remap.jis_command2eisuukana_prefer_eisuukana 1
/bin/echo -n .
$cli set remap.jis_command2eisuukana_prefer_command 1
/bin/echo -n .
$cli set option.vimode_control_bf 1
/bin/echo -n .
$cli set remap.fkeys_to_consumer_f7 1
/bin/echo -n .
/bin/echo
