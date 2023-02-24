-- for reference to edit the zones: 
-- https://overextended.github.io/docs/ox_lib/Zones/Client

function onEnterGangZone1(self)
    -- Notification
    lib.notify({
        id = 'GangZone1_E',
        title = 'Entering Triad Territory',
        description = 'Be on your best behavior',
        position = 'top',
        style = {
            backgroundColor = '#e63232',
            color = '#ffffff'
        },
        icon = 'map',
        iconColor = '#ebe53b'
    })

end

function onExitGangZone1(self)
    -- Notification
    lib.notify({
        id = 'GangZone1_L',
        title = 'Leaving Triad Territory',
        description = 'See? That wasn\'t so bad',
        position = 'top',
        style = {
            backgroundColor = '#e63232',
            color = '#ffffff'
        },
        icon = 'map',
        iconColor = '#ebe53b'
    })

end

-- -683.927, -880.99, 24.499, 88.308
local gangZone_1 = lib.zones.poly({
    points = {
        vec(-683.927, -880.99, 24.499),
        vec(-685.721, -880.861, 24.499),
        vec(-687.243, -878.826, 24.499),
        vec(-683.903, -877.233, 24.499),
        vec(-682.343, -878.662, 24.499)
    },
    thickness = 2,
    debug = true,
    onEnter = onEnterGangZone1,
    onExit = onExitGangZone1
})