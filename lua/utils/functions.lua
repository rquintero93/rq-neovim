local M = {}

function M.open_in_visidata()
  -- Write the current buffer to a temporary file
  -- vim.cmd("write! /tmp/vd_temp.csv")
  -- Open the file in Visidata

  -- vim.fn.jobstart({"open","-a","Terminal","/usr/local/bin/visidata", "/tmp/vd_temp.csv"}, {detach = true})

--   vim.fn.jobstart({
--     "osascript",
--     "-e",
--     [[tell application "Terminal" to do script "visidata /tmp/vd_temp.csv"]],
--   }, {detach = true})
-- end
  -- Write the current buffer to a temporary file
  vim.fn.jobstart({
    "osascript",
    "-e",
    [[tell application "Ghostty" to activate]],
    "-e",
    [[tell application "System Events" to keystroke "t" using {command down}]],
    "-e",
    [[delay 0.5]],
    "-e",
    [[tell application "System Events" to keystroke "visidata /tmp/vd_temp.csv"]],
    "-e",
    [[tell application "System Events" to key code 36]], -- Press "Enter"
  }, {detach = true})
--
end
return M
