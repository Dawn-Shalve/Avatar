function player_init()
    for _, v in pairs(vanilla_model) do
        v.setEnabled(false)
    end
    for _, v in pairs(armor_model) do
        v.setEnabled(false)
    end
    for _, v in pairs(elytra_model) do
        v.setEnabled(false)
    end
end

spawning=0
hat = 0
action_wheel.SLOT_1.setTitle("Hat toggle")
action_wheel.SLOT_1.setFunction(function() hats() end)

function hats()
    if hat == 0 then
        model.Head.Hat.setEnabled(false)
        hat=1
    else
        if hat == 1 then
        model.Head.Hat.setEnabled(true)
        hat=0
    end
end
end

function spawn()
    if spawning == 1 then
  animation.spawner.play()    
    end
end

yaszu = 1
losoa = 0

function onCommand(input)
    if input == "$rickroll" then
        chat.sendMessage("https://www.youtube.com/watch?v=dQw4w9WgXcQ")
    end
end