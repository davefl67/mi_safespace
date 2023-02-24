function onEnterDangerZone(self)
    -- Notification
    lib.notify({
        id = 'DangerZone_E',
        title = 'Entering Restricted Area',
        description = 'Trespassing here is a felony offence',
        position = 'top',
        style = {
            backgroundColor = '#19ff90',
            color = '#ffffff'
        },
        icon = 'shield-halved',
        iconColor = '#ffffff'
    })

end

function onExitDangerZone(self)
    -- Notification
    lib.notify({
        id = 'DangerZone_L',
        title = 'Leaving Restricted Area',
        description = 'Turn yourself in. Or don\'t, I don\'t care',
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
    debug = true, -- Remember to disable when you are done setting the area
    inside = inside,
    onEnter = onEnterPillbox,
    onExit = onExitPillbox
})