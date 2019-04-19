local application = require "hs.application"
local urlevent = require "hs.urlevent"
local hotkey = require "hs.hotkey"
local alert = require "hs.alert"
local pasteboard = require "hs.pasteboard"

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

hs.hotkey.bind({"cmd", "ctrl"}, "v", function()
  hs.application.launchOrFocus("Sublime Merge")
end)

hs.hotkey.bind({"cmd", "ctrl", "shift"}, "i", function()
  hs.application.launchOrFocus("iTunes")
end)

hs.hotkey.bind({"cmd", "ctrl", "shift"}, "t", function()
  hs.application.launchOrFocus("Trello")
end)

hs.hotkey.bind({"cmd", "ctrl"}, "e", function()
  hs.application.launchOrFocus("Tweetbot")
end)

hs.hotkey.bind({"cmd", "ctrl"}, "n", function()
  hs.application.launchOrFocus("Sblack")
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

hs.hotkey.bind({"cmd", "ctrl"}, "d", function()
  hs.application.launchOrFocus("Day One")
end)

hs.hotkey.bind({"cmd", "ctrl"}, "p", function()
  hs.application.launchOrFocus("Newton")
end)

-- hs.hotkey.bind({"cmd", "ctrl"}, "e", function()
--   hs.application.launchOrFocus("Simulator")
-- end)

hs.hotkey.bind({"cmd", "ctrl"}, "f", function()
  hs.application.launchOrFocus("Fantastical 2")
end)

hs.hotkey.bind({"cmd", "ctrl"}, "r", function()
  hs.application.launchOrFocus("Drafts")
end)

-- hs.hotkey.bind({"cmd", "ctrl", "shift"}, "f", function()
  -- hs.application.launchOrFocus("Firefox")
-- end)

hs.hotkey.bind({"cmd", "ctrl", "shift"}, "s", function()
  hs.application.launchOrFocus("Safari")
end)

-- hs.hotkey.bind({"cmd", "ctrl"}, "b", function()
--   hs.application.launchOrFocus("xcode")
-- end)

hs.hotkey.bind({"cmd", "ctrl", "shift"}, "c", function()
  hs.application.launchOrFocus("Logic Pro X")
end)

hs.hotkey.bind({"cmd", "ctrl"}, "c", function()
  hs.application.launchOrFocus("Calcbot")
end)

hs.hotkey.bind({"cmd", "ctrl"}, "w", function()
  hs.application.launchOrFocus("UlyssesMac")
end)

hs.hotkey.bind({"cmd", "ctrl"}, "s", function()
  hs.application.launchOrFocus("Spotify")
end)

hs.hotkey.bind({"option", "cmd"}, "p", function()
  hs.application.launchOrFocus("Postman")
end)

hs.hotkey.bind({"cmd", "ctrl"}, "1", function()
  local dayofweek = os.date("%A")
  local month = os.date("%B")
  local day = os.date(" %d"):gsub(" 0","")
  local year = os.date("%Y")
  local strDate = "# " .. dayofweek .. ", " .. month .. " " .. day .. ", " .. year
  local date = "%23%20" .. dayofweek .. "%2C%20" .. month .. "%20" .. day .. "%2C%20" .. year .. "%0A%0A%0A"
  local newJournal = "ulysses://x-callback-url/new-sheet?text=" .. date .. "&group=Journal&index=0"
  local openUlysses = "ulysses://x-callback-url/new-sheet?group=Inbox"
  hs.pasteboard.writeObjects(strDate)
  hs.urlevent.openURLWithBundle(openUlysses, "com.ulyssesapp.mac")
end)

hs.hotkey.bind({"cmd", "ctrl"}, "9", function()
  hs.urlevent.openURLWithBundle("https://itunes.apple.com/us/curator/rocket-hour/id993269779", "com.apple.Safari")
end)

hs.hotkey.bind({"cmd", "ctrl"}, "b", function()
  hs.urlevent.openURLWithBundle("bear://x-callback-url/search?", "net.shinyfrog.bear")
end)

hs.hotkey.bind({"cmd", "ctrl"}, "8", function()
  hs.urlevent.openURLWithBundle("bear://x-callback-url/open-note?id=AF2321B9-211D-4A92-8EEA-C65995DD20E3-94905-00049B812D96A43D", "net.shinyfrog.bear")
end)

hs.hotkey.bind({"cmd", "ctrl"}, "7", function()
  hs.urlevent.openURLWithBundle("bear://x-callback-url/open-note?id=0DD570AF-CC9A-4D21-BFC1-0064F6DE1F83-470-000019AD2A7BF97C", "net.shinyfrog.bear")
end)

hs.hotkey.bind({"cmd", "ctrl", "shift"}, "H", function()
  hs.reload()
end)

hs.hotkey.bind({"cmd", "ctrl"}, "2", function()
  local win = hs.window.focusedWindow()
  win:setSize(630, 600)
  win:centerOnScreen()
end)

hs.hotkey.bind({"cmd", "ctrl"}, "3", function()
  local win = hs.window.focusedWindow()
  win:setSize(830, 800)
  win:centerOnScreen()
end)

hs.hotkey.bind({"cmd", "ctrl"}, "4", function()
  local win = hs.window.focusedWindow()
  win:setSize(1230, 800)
  win:centerOnScreen()
end)

hs.hotkey.bind({"cmd", "ctrl"}, "5", function()
  local win = hs.window.focusedWindow()
  win:setSize(1430, 1200)
  win:centerOnScreen()
end)

hs.hotkey.bind({"cmd", "ctrl"}, "6", function()
  local win = hs.window.focusedWindow()
  win:setSize(1850, 1250)
  win:centerOnScreen()
end)

-- a callback function to be called when application events happen
function applicationWatcherCallback(appName, eventType, appObject)
  if (appName == "Things") then
    if (eventType == hs.application.watcher.activated) then
      -- app just got focus, disable our hotkeys
    elseif (eventType == hs.application.watcher.deactivated) then
      -- app just lost focus, enable our hotkeys
    end
  end
end

-- Create and start the application event watcher
watcher = hs.application.watcher.new(applicationWatcherCallback)
watcher:start()

-- Close notifications
script = [[
my closeNotif()
on closeNotif()

    tell application "System Events"
        tell process "Notification Center"
            set theWindows to every window
            repeat with i from 1 to number of items in theWindows
                set this_item to item i of theWindows
                try
                    click button 1 of this_item
                on error

                    my closeNotif()
                end try
            end repeat
        end tell
    end tell

end closeNotif ]]

function clearNotifications()
  ok, result = hs.applescript(script)
end

hs.hotkey.bind({"cmd", "ctrl", "shift"}, "c", function()
  hs.timer.doAfter(1, clearNotifications)
end)

----------------
-- WINDOW CONTROL
-----------------

-- SETTINGS
------------

-- local mod1 = {"cmd", "shift"} -- Movement
-- local mod2 = {"cmd", "ctrl"} -- Resizing
-- local mod3 = {"alt", "shift"} -- Movement slower
-- local mod4 = {"alt", "ctrl"} -- Resizing slower

-- hs.hotkey.bind(mod1,"R", function()
  -- hs.reload()
-- end)

-- MOVEMENT
------------

-- hs.hotkey.bind(mod1,"Left", function()
  -- local win = hs.window.focusedWindow()
  -- local f = win:frame()

  -- f.x = f.x - 15
  -- win:setFrame(f)
-- end)

-- hs.hotkey.bind(mod1,"Right", function()
  -- local win = hs.window.focusedWindow()
  -- local f = win:frame()

  -- f.x = f.x + 15
  -- win:setFrame(f)
-- end)

-- hs.hotkey.bind(mod1,"Up", function()
  -- local win = hs.window.focusedWindow()
  -- local f = win:frame()

  -- f.y = f.y - 15
  -- win:setFrame(f)
-- end)

-- hs.hotkey.bind(mod1,"Down", function()
  -- local win = hs.window.focusedWindow()
  -- local f = win:frame()

  -- f.y = f.y + 15
  -- win:setFrame(f)
-- end)

-- hs.hotkey.bind(mod3,"Left", function()
  -- local win = hs.window.focusedWindow()
  -- local f = win:frame()

  -- f.x = f.x - 5
  -- win:setFrame(f)
-- end)

-- hs.hotkey.bind(mod3,"Right", function()
  -- local win = hs.window.focusedWindow()
  -- local f = win:frame()

  -- f.x = f.x + 5
  -- win:setFrame(f)
-- end)

-- hs.hotkey.bind(mod3,"Up", function()
  -- local win = hs.window.focusedWindow()
  -- local f = win:frame()

  -- f.y = f.y - 5
  -- win:setFrame(f)
-- end)

-- hs.hotkey.bind(mod3,"Down", function()
  -- local win = hs.window.focusedWindow()
  -- local f = win:frame()

  -- f.y = f.y + 5
  -- win:setFrame(f)
-- end)

----------
 -- RESIZING
----------

-- hs.hotkey.bind(mod2,"Left", function()
  -- local win = hs.window.focusedWindow()
  -- local f = win:frame()

  -- f.w = f.w - 15
  -- win:setFrame(f)
-- end)

-- hs.hotkey.bind(mod2,"Right", function()
  -- local win = hs.window.focusedWindow()
  -- local f = win:frame()

  -- f.w = f.w + 15
  -- win:setFrame(f)
-- end)

-- hs.hotkey.bind(mod2,"Up", function()
  -- local win = hs.window.focusedWindow()
  -- local f = win:frame()

  -- f.h = f.h - 15
  -- win:setFrame(f)
-- end)

-- hs.hotkey.bind(mod2,"Down", function()
  -- local win = hs.window.focusedWindow()
  -- local f = win:frame()

  -- f.h = f.h + 15
  -- win:setFrame(f)
-- end)

-- hs.hotkey.bind(mod4,"Left", function()
  -- local win = hs.window.focusedWindow()
  -- local f = win:frame()

  -- f.w = f.w - 5
  -- win:setFrame(f)
-- end)

-- hs.hotkey.bind(mod4,"Right", function()
  -- local win = hs.window.focusedWindow()
  -- local f = win:frame()

  -- f.w = f.w + 5
  -- win:setFrame(f)
-- end)

-- hs.hotkey.bind(mod4,"Up", function()
  -- local win = hs.window.focusedWindow()
  -- local f = win:frame()

  -- f.h = f.h - 5
  -- win:setFrame(f)
-- end)

-- hs.hotkey.bind(mod4,"Down", function()
  -- local win = hs.window.focusedWindow()
  -- local f = win:frame()

  -- f.h = f.h + 5
  -- win:setFrame(f)
-- end)