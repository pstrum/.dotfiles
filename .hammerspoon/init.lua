local application = require "hs.application"
local urlevent = require "hs.urlevent"
local hotkey = require "hs.hotkey"
local alert = require "hs.alert"
local pasteboard = require "hs.pasteboard"
local timer = require "hs.timer"
local http = require "hs.http"
local json = require "hs.json"
local location = require "hs.location"
local osascript = require "hs.osascript"

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
  hs.application.launchOrFocus("Craft")
end)

hs.hotkey.bind({"cmd", "ctrl"}, "i", function()
  hs.application.launchOrFocus("iTerm")
end)

hs.hotkey.bind({"cmd", "ctrl"}, "k", function()
  hs.application.launchOrFocus("Figma")
end)

hs.hotkey.bind({"cmd", "ctrl"}, "v", function()
  hs.application.launchOrFocus("Sublime Merge")
end)

hs.hotkey.bind({"cmd", "ctrl", "shift"}, "i", function()
  hs.application.launchOrFocus("Spotify")
end)

hs.hotkey.bind({"cmd", "ctrl", "shift"}, "e", function()
  hs.application.launchOrFocus("Endel")
end)

hs.hotkey.bind({"cmd", "ctrl", "shift"}, "t", function()
  hs.application.launchOrFocus("Trello")
end)

hs.hotkey.bind({"cmd", "ctrl"}, "e", function()
  hs.application.launchOrFocus("Tweetbot")
end)

hs.hotkey.bind({"cmd", "ctrl"}, "n", function()
  hs.application.launchOrFocus("Slack")
end)

hs.hotkey.bind({"cmd", "ctrl"}, ",", function()
  hs.application.launchOrFocus("Messages")
end)

hs.hotkey.bind({"cmd", "ctrl"}, "m", function()
  hs.application.launchOrFocus("Cardhop")
end)

hs.hotkey.bind({"cmd", "ctrl", "shift"}, "l", function()
  hs.application.launchOrFocus("Visual Studio Code")
end)

hs.hotkey.bind({"cmd", "ctrl"}, "l", function()
  hs.application.launchOrFocus("Webstorm")
end)

hs.hotkey.bind({"cmd", "ctrl"}, "u", function()
  hs.application.launchOrFocus("Things3")
end)

hs.hotkey.bind({"cmd", "ctrl"}, "t", function()
  hs.application.launchOrFocus("Tot")
end)

hs.hotkey.bind({"cmd", "ctrl"}, "o", function()
  hs.application.launchOrFocus("Dash")
end)

hs.hotkey.bind({"cmd", "ctrl"}, "d", function()
  hs.application.launchOrFocus("Day One")
end)

hs.hotkey.bind({"cmd", "ctrl"}, "p", function()
  hs.application.launchOrFocus("Simulator")
end)

hs.hotkey.bind({"cmd", "ctrl"}, "e", function()
  hs.application.launchOrFocus("Hey")
end)

hs.hotkey.bind({"cmd", "ctrl"}, "f", function()
  hs.application.launchOrFocus("Fantastical")
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

hs.hotkey.bind({"cmd", "ctrl"}, "x", function()
  hs.application.launchOrFocus("xcode")
end)

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
  local shell_command = "open " .. "~/Documents/Screenshots"
  hs.execute(shell_command)
end)

hs.hotkey.bind({"option", "cmd"}, "p", function()
  hs.application.launchOrFocus("Postman")
end)

-- hs.hotkey.bind({"cmd", "ctrl"}, "1", function()
  -- local newJournal = "ulysses://x-callback-url/new-sheet?text=" .. date .. "&group=Journal&index=0"
  -- local openUlysses = "ulysses://x-callback-url/new-sheet?group=Inbox"
  -- hs.pasteboard.writeObjects(strDate)
  -- hs.urlevent.openURLWithBundle(newJournal, "com.ulyssesapp.mac")
  -- hs.application.launchOrFocus("UlyssesMac")

  -- getJournalData()
-- end)

-- hs.hotkey.bind({"cmd", "ctrl"}, "1", function()
--   local dayofweek = os.date("%A")
--   local month = os.date("%B")
--   local day = os.date(" %d"):gsub(" 0","")
--   local year = os.date("%Y")
--   local strDate = "# " .. dayofweek .. ", " .. month .. " " .. day .. ", " .. year
--   local date = "%23%20" .. dayofweek .. "%2C%20" .. month .. "%20" .. day .. "%2C%20" .. year .. "%0A%0A%0A"
--   local newJournal = "ulysses://x-callback-url/new-sheet?text=" .. date .. "&group=Journal&index=0"
--   local openUlysses = "ulysses://x-callback-url/new-sheet?group=Inbox"
--   hs.pasteboard.writeObjects(strDate)
--   hs.urlevent.openURLWithBundle(openUlysses, "com.ulyssesapp.mac")
-- end)

hs.hotkey.bind({"cmd", "ctrl"}, "9", function()
  hs.urlevent.openURLWithBundle("https://itunes.apple.com/us/curator/rocket-hour/id993269779", "com.apple.Safari")
end)

hs.hotkey.bind({"cmd", "ctrl"}, "r", function()
  hs.urlevent.openURLWithBundle("https://github.com/copperapp/copper/pulls", "com.google.Chrome")
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

hs.hotkey.bind({"cmd", "ctrl", "shift"}, "R", function()
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
  -- win:setSize(1300, 930)
  -- win:centerOnScreen()
  win:moveToUnit("[1.75,3,70,97]")
end)

hs.hotkey.bind({"cmd", "ctrl"}, "5", function()
  local win = hs.window.focusedWindow()
  win:setSize(1430, 1000)
  win:centerOnScreen()
end)

hs.hotkey.bind({"cmd", "ctrl"}, "6", function()
  local win = hs.window.focusedWindow()
  win:setSize(1850, 1250)
  win:centerOnScreen()
end)

function getJournalData()
  getDate()
  getMusicData()
end

function encode(str)
  -- local encoded = hs.osascript.javascript([[ encodeURIComponent(str) ]])
  local source = "encodeURIComponent(" .. str .. ")"
  local encoded = hs.osascript._osascript(source,"javascript")
  print(encoded);
end

function getDate()
  local dayofweek = os.date("%A")
  local month = os.date("%B")
  local day = os.date(" %d"):gsub(" 0","")
  local year = os.date("%Y")
  local strDate = "# " .. dayofweek .. ", " .. month .. " " .. day .. ", " .. year
  local date = "%23%20" .. dayofweek .. "%2C%20" .. month .. "%20" .. day .. "%2C%20" .. year .. "%0A%0A%0A"
  journalDate = date
end

function getMusicData()
  local url = 'https://api.music.apple.com/v1/me/recent/played'
  headers = {}
  headers["Music-User-Token"] = "AhRpR3802GNahAK0Fhe8NNsbpwmRof+ACsRLuOzzJ1sSG0RjRSPwrIlXCy/NupQMKFmZ6lBQDEm4Teq+t5ZglXsh0jl1xcAl63WTibKSapGjq28XQwnOTZKSVtI+yxpFrTrgYx5m8LV51OIJogehwMZLI/8l7IDTcovAlGPhtA0R9yWgsL+WeU3iEUkaY64MZs8WtdJhcaWYsF9T1/0asTYIHtSP0W0c7LTwUQuG/NAcyTCjQA=="
  headers["Authorization"] = "Bearer eyJhbGciOiJFUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6Iko0REFXN0xGN0QifQ.eyJpc3MiOiJUSDM5MzUzMjJRIiwiaWF0IjoxNTcyNTQ0NzIwLCJleHAiOjE1ODgzMjE3MjB9.ysNJwosyn9S-ouDL-LSpVIK5nbQL4wf50AuFoP9FE6YpnHiIne61SCh9hiuOj7eSgifIxwQF3TajyncXeNzuKg"
  hs.http.asyncGet(url, headers, getMusicCallback)
end

function getMusicCallback(status, body, headers)
  local response = hs.json.decode(body);
  local name = response["data"][1].attributes.name
  local url = response["data"][1].attributes.url
  journalMusic = " • [" .. name .. "](" .. url .. ")"
  -- encode(journalMusic)
  getLocationData()
end

function getLocationData()
  local locationAvailable = hs.location.servicesEnabled()
  local locationTracking = hs.location.start()

  if (locationAvailable) then
    sleep(1)
    local locationDetails = hs.location.get()

    if (locationDetails) then
      hs.location.geocoder.lookupLocation(locationDetails, getAddressCallback)
    end
  end
end

function sleep(n)
  os.execute("sleep " .. tonumber(n))
end

function getAddressCallback(state, result)
  local street = result[1].name
  local city = result[1].locality
  local state = result[1].administrativeArea
  journalAddress = street .. ", " .. city .. ", " .. state
  getWeather()
end

function getWeather()
  journalWeather = ""
  createJournalEntry()
end

function createJournalEntry()
  local newJournal = "bear://x-callback-url/create?edit=yes&text=%23%20%0A%0A" .. journalDate .. "%0A" .. journalAddress .. "%0A" .. journalWeather .. journalMusic .. "%0A%0A%23writing%2Fjournal"
  print(newJournal)
  hs.urlevent.openURLWithBundle(newJournal, "net.shinyfrog.bear")
end

-- a callback function to be called when application events happen
-- function applicationWatcherCallback(appName, eventType, appObject)
--   local time = timer.localTime()
--   local day = os.date("%A")

  -- No Twitter or Email M-F between 9am-12pm or 1pm-430pm
  -- if (day ~= "Saturday" or day ~= "Sunday") then
  --   if ((time > 32400 and time < 43200) or (time > 46800 and time < 59400)) then
  --     if (appName == "Tweetbot" or appName == "Newton") then
  --       if (eventType == hs.application.watcher.activated or
  --           eventType == hs.application.watcher.launching) then
  --         appObject:kill()
  --       end
  --     end
  --   end
  -- end

  -- if (appName == "Things") then
    -- if (eventType == hs.application.watcher.activated) then
      -- app just got focus, disable our hotkeys
    -- elseif (eventType == hs.application.watcher.deactivated) then
      -- app just lost focus, enable our hotkeys
    -- end
  -- end
-- end

-- Create and start the application event watcher
-- watcher = hs.application.watcher.new(applicationWatcherCallback)
-- watcher:start()

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
