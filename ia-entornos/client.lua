ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject',function(obj)
            ESX = obj
        end)
    end
end)

function OpenMenu()

    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'default',{

        title =  'Entornos',
        align = 'bottom-right',
        elements = {
                {label = 'Entorno de Tiroteo',  value = 'tiroteo'},
                {label = 'Entorno de Pelea',    value = 'pelea'},
                {label = 'Entorno de Droga',    value = 'droga'},
                {label = 'Entorno de Velocidad', value = 'velocidad'}
        }

        }, function(data, menu)
            if data.value == 'tiroteo' then
                ExecuteCommand('entorno TEST')
            elseif data.value == 'pelea' then
                ExecuteCommand('entorno TEST')
            elseif data.value == 'droga' then
                ExecuteCommand('entorno TEST')
            elseif data.value == 'velocidad' then
                ExecuteCommand('entorno TEST')
            end

        end,function(data, menu)
            menu.close()
        end)
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(10)
        if IsControlJustReleased(0--[[control type]],  121--[[control index]]) then
            OpenMenu()
        end

        Citizen.Wait(10)
    end
end)