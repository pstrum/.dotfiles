local application = require "hs.application"
local urlevent = require "hs.urlevent"
local hotkey = require "hs.hotkey"
local alert = require "hs.alert"

local keys = require "keys"
-- require "triggers"
-- require "window_management"
-- require "auto_muter"
-- require "application_watcher"

-- keys.deactivateKeys()
-- keys.activateKeys()

alert.show("Hammerspoon loaded!")

hs.hotkey.bind({"cmd", "ctrl"}, "h", function()
  hs.application.launchOrFocus("Google Chrome")
end)

hs.hotkey.bind({"cmd", "ctrl"}, "j", function()
  hs.application.launchOrFocus("Bear")
end)

hs.hotkey.bind({"cmd", "ctrl"}, "i", function()
  hs.application.launchOrFocus("iTerm")
end)

hs.hotkey.bind({"cmd", "ctrl"}, "k", function()
  hs.application.launchOrFocus("Sketch")
end)

hs.hotkey.bind({"cmd", "ctrl"}, "t", function()
  hs.application.launchOrFocus("iTunes")
end)

hs.hotkey.bind({"cmd", "ctrl"}, "n", function()
  hs.application.launchOrFocus("Slack")
end)

hs.hotkey.bind({"cmd", "ctrl"}, ",", function()
  hs.application.launchOrFocus("Messages")
end)

hs.hotkey.bind({"cmd", "ctrl"}, "l", function()
  hs.application.launchOrFocus("Sublime Text")
end)

hs.hotkey.bind({"cmd", "ctrl"}, "u", function()
  hs.application.launchOrFocus("Things3")
end)

hs.hotkey.bind({"cmd", "ctrl"}, "o", function()
  hs.application.launchOrFocus("Dash")
end)

hs.hotkey.bind({"cmd", "ctrl"}, "m", function()
  hs.application.launchOrFocus("Day One")
end)

hs.hotkey.bind({"cmd", "ctrl"}, "p", function()
  hs.application.launchOrFocus("Newton")
end)

hs.hotkey.bind({"cmd", "ctrl"}, "e", function()
  hs.application.launchOrFocus("Simulator")
end)

hs.hotkey.bind({"cmd", "ctrl"}, "f", function()
  hs.application.launchOrFocus("Safari")
end)

hs.hotkey.bind({"cmd", "ctrl"}, "b", function()
  hs.application.launchOrFocus("xcode")
end)

hs.hotkey.bind({"cmd", "ctrl"}, "c", function()
  hs.application.launchOrFocus("calcbot")
end)

hs.hotkey.bind({"cmd", "ctrl"}, "w", function()
  hs.application.launchOrFocus("iA Writer")
end)

hs.hotkey.bind({"cmd", "ctrl"}, "9", function()
  hs.urlevent.openURLWithBundle("https://itunes.apple.com/us/curator/rocket-hour/id993269779", "com.apple.Safari")
end)

hs.hotkey.bind({"cmd", "ctrl"}, "8", function()
  hs.urlevent.openURLWithBundle("bear://x-callback-url/open-note?id=AF2321B9-211D-4A92-8EEA-C65995DD20E3-94905-00049B812D96A43D", "net.shinyfrog.bear")
end)

hs.hotkey.bind({"cmd", "ctrl"}, "7", function()
  hs.urlevent.openURLWithBundle("bear://x-callback-url/open-note?id=E6A8D0EE-415D-44F7-AA2A-98535B44E9BA-16539-000046E8CC7BA569", "net.shinyfrog.bear")
end)

hs.hotkey.bind({"cmd", "ctrl"}, "6", function()
  hs.urlevent.openURLWithBundle("bear://x-callback-url/open-note?id=0DD570AF-CC9A-4D21-BFC1-0064F6DE1F83-470-000019AD2A7BF97C", "net.shinyfrog.bear")
end)
