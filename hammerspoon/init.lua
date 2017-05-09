
local simpleCmd = false
local leftSet = false
local rightSet = false

local leftCmd = 0x37
local rightCmd = 0x36
local eisuu = 0x66
local kana = 0x68

local function keyStroke(modifiers, character)
    hs.eventtap.keyStroke(modifiers, character, 5000)
end

local function eikanaEvent(event)
    local c = event:getKeyCode()
    local f = event:getFlags()
    if event:getType() == hs.eventtap.event.types.keyDown then
        if f['cmd'] and c then
            simpleCmd = true
        end
    elseif event:getType() == hs.eventtap.event.types.flagsChanged then
        if f['cmd'] then
            if c  == leftCmd then
                leftSet = true
                rightSet = false
            elseif c == rightCmd then
                rightSet = true
                leftSet = false
            end
        else
            if simpleCmd == false then
                if leftSet then
                    keyStroke({}, eisuu)
                elseif rightSet then
                    keyStroke({}, kana)
                end
            end
                simpleCmd = false
                leftSet = false
                rightSet = false
        end
    end
end

eventtap = hs.eventtap.new({hs.eventtap.event.types.keyDown, hs.eventtap.event.types.flagsChanged}, eikanaEvent)

eventtap:start()


local function keyCode(key, modifiers)
   modifiers = modifiers or {}
   return function()
      hs.eventtap.event.newKeyEvent(modifiers, string.lower(key), true):post()
      hs.timer.usleep(1000)
      hs.eventtap.event.newKeyEvent(modifiers, string.lower(key), false):post()
   end
end

local function remapKey(modifiers, key, keyCode)
   hs.hotkey.bind(modifiers, key, keyCode, nil, keyCode)
end

remapKey({'ctrl'}, 'h', keyCode('left'))
remapKey({'ctrl'}, 'j', keyCode('down'))
remapKey({'ctrl'}, 'k', keyCode('up'))
remapKey({'ctrl'}, 'l', keyCode('right'))
