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

-- -889.686, -853.515, 20.566, 271.256 (Little Seoul Gate)
local pillbox = lib.zones.box({
    coords = vec3(-889.686, -853.515, 20.566),
    size = vec3(3, 3, 3),
    rotation = 15,
    debug = true,
    inside = inside,
    onEnter = onEnterPillbox,
    onExit = onExitPillbox
})