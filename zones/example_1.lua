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
        icon = 'shield-halved',
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
        icon = 'shield-halved',
        iconColor = '#ffffff'
    })

end

-- 364.17, -592.174, 28.683, 343.343 (Pillbox Hospital)
local pillbox = lib.zones.box({
    coords = vec3(364.17, -592.174, 28.683),
    size = vec3(5, 5, 4),
    rotation = 15,
    debug = true, -- Remember to disable when you are done setting the area
    inside = inside,
    onEnter = onEnterPillbox,
    onExit = onExitPillbox
})