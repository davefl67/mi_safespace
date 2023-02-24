-- for reference to edit the zones: 
-- https://overextended.github.io/docs/ox_lib/Zones/Client

function onEnterPillbox(self)
    -- Notification
    lib.notify({
        id = 'Pillbox_E',
        title = 'Entering Pillbox General Hospital',
        description = 'Weapons are not permitted',
        position = 'top',
        style = {
            backgroundColor = '#19ff90',
            color = '#ffffff'
        },
        icon = 'shield',
        iconColor = '#ffffff'
    })

end

function onExitPillbox(self)
    -- Notification
    lib.notify({
        id = 'Pillbox_L',
        title = 'Leaving Pillbox General Hospital',
        description = 'Have a healthy, wonderful day',
        position = 'top',
        style = {
            backgroundColor = '#ff7e1c',
            color = '#ffffff'
        },
        icon = 'shield',
        iconColor = '#ffffff'
    })

end

-- -684.173, -891.12, 24.499, 86.398
local pillbox = lib.zones.box({
    coords = vec3(-684.173, -891.12, 24.499),
    size = vec3(2, 2, 2),
    rotation = 0,
    debug = true, -- Remember to disable when you are done setting the area
    onEnter = onEnterPillbox,
    onExit = onExitPillbox
})