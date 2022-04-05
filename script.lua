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
nameplate.ENTITY.setText("Yaszu || Mage")
nameplate.CHAT.setText("Yaszu")
nameplate.LIST.setText("Yaszu")
end

network.registerPing("slot1")
network.registerPing("slot2")
network.registerPing("slot3")
network.registerPing("slot4")
network.registerPing("slot5")
network.registerPing("slot6")
network.registerPing("slot7")
network.registerPing("slot8")


spawning=0
hat = 0
action_wheel.SLOT_1.setTitle("Hat toggle")
action_wheel.SLOT_1.setFunction(function() hats() end)

function hats()
    if hat == 0 then
        model.Head.Hat.setEnabled(false)
        hat=1
        network.ping("slot1")
    else
        if hat == 1 then
        model.Head.Hat.setEnabled(true)
        hat=0
        network.ping("slot1")
    end
end
end

function slot1()
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

if client.isHost() then function tick()
    local count = 0
    for _, slot in pairs(action_wheel) do
        if type(slot) == "table" then
            if slot.getFunction() ~= nil then
                count = count + 1
            end
        end
    end
    action_wheel.setLeftSize(math.floor(count/2.0))
    action_wheel.setRightSize(math.ceil(count/2.0))
end end


action_wheel.SLOT_2.setTitle("Toggle Bell")
action_wheel.SLOT_2.setFunction(function() bell() end)

bellz = 0
function bell()
    if bellz == 0 then
        model.Head.Hat.bell.setEnabled(false)
        bellz=1
        network.ping("slot2")
    else
 model.Head.Hat.bell.setEnabled(true)
 bellz=0
 network.ping("slot2")
    end
end

function slot2()
    if bellz == 0 then
        model.Head.Hat.bell.setEnabled(false)
        bellz=1
    else
 model.Head.Hat.bell.setEnabled(true)
 bellz=0
    end
end

action_wheel.SLOT_3.setFunction(function() clap() end)
action_wheel.SLOT_3.setTitle("Clap")


function clap()
 animation.basic_clap.play()
 network.ping(slot3)
end

function slot3()
    animation.basic_clap.play()
end

action_wheel.SLOT_4.setFunction(function() wave() end)
action_wheel.SLOT_4.setTitle("Wave")

function wave()
    animation.overhead_wave.play()
    network.ping("slot3")
end

function slot3()
    animation.overhead_wave.play()
end

action_wheel.SLOT_5.setTitle("Point")
action_wheel.SLOT_5.setFunction(function() point() end)

function point()
    animation.communication_point.play()
    network.ping("slot5")
end

function slot5()
    animation.communication_point.play()
end


action_wheel.SLOT_6.setTitle("follow")
action_wheel.SLOT_6.setFunction(function() follow() end)

function follow()   
    animation.communication_follow_me.play()
    network.ping("slot6")
end

function slot6()
    animation.communication_follow_me.play()
end


action_wheel.SLOT_7.setTitle("hat fly")
action_wheel.SLOT_7.setFunction(function() hatfly() end)

function hatfly()
    animation.hat.play()
    network.ping("slot7")
end

function slot7()
    animation.hat.play()
end

action_wheel.SLOT_8.setTitle("stop anim")
action_wheel.SLOT_8.setFunction(function() stop() end)

function stop()
    animation.stopAll()
    network.ping("slot8")
end

function slot8()
    animation.stopAll()
end