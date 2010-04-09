require"atexit"
require"lunit"

--for k,v in pairs(debug.getinfo(1,"S")) do print(k,v) end
-- autonameing
-- module("bcrc-test", lunit.testcase, package.seeall)

atexit(function()
    local _, emsg = xpcall(function()
        lunit.main(arg)
    end, debug.traceback)
    if emsg then
        print(emsg)
        os.exit(1)
    end
end)

