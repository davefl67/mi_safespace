-- for reference to edit the zones: 
-- https://overextended.github.io/docs/ox_lib/Zones/Client

function onEnterDangerZone(self)
    -- Notification
    lib.notify({
        id = 'DangerZone_E',
        title = 'Entering Restricted Area',
        description = 'Trespassing here is a felony offence',
        position = 'top',
        style = {
            backgroundColor = '#ff7e1c', 
            color = '#ffffff'
        },
        icon = 'eye',
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
            backgroundColor = '#19ff90',
            color = '#ffffff'
        },
        icon = 'eye-slash',
        iconColor = '#ffffff'
    })

end

-- -684.252, -886.079, 24.499, 103.913
local Danger_1 = lib.zones.sphere({
    coords = vec3(-684.252, -886.079, 24.499),
    radius = 1,
    debug = true, -- Remember to disable when you are done setting the area
    onEnter = onEnterDangerZone,
    onExit = onExitDangerZone
})