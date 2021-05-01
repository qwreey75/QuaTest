local module = {};

function module:init(testProfile)
    local private = {
        testProfile = testProfile; -- this test name
        nowThing = nil;
        nowIt = nil;
        status = {};
        totalThingFail = 0; -- total it fail
        totalThingPass = 0; -- total it pass

        global = {};
        print = nil;
        isRunning = false;
        waitForEnter = require("waitForEnter"):init(io,print); -- wait for enter module
    };
    --private.logger = require("logger"):init(private);

    return {
        util = require("util");
        global = private.global;
        waitForEnter = private.waitForEnter;

        run = (require("run"):init(private));
        thing = (require("thing"):init(private));
        it = (require("it"):init(private));

        test = (require("test"):init(private));
        results = (require("results"):init(private));
    };
end

return module;