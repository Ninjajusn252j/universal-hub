local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/weakhoes/Roblox-UI-Libs/refs/heads/main/Orion%20Lib/Orion%20Lib%20Source.lua')))()

local Window = OrionLib:MakeWindow({
    Name = "Ninja-Hub Key System",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "OrionTest",
    IntroEnabled = true,
    IntroText = "Ninja-Hub loading...",
    IntroIcon = "rbxassetid://88159629854210",
    Icon = "rbxassetid://88159629854210"
})

local KeyTab = Window:MakeTab({
    Name = "Key",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- Etiquetas
KeyTab:AddLabel("Únete a nuestro grupo de Roblox para obtener la key permanente (tienes que pulsar el botón).")

-- Enlace del grupo
local GroupLink = "https://roblox.com.py/groups/800270751/" -- Asegúrate de que este enlace sea válido

-- Caja de texto para ingresar la key
KeyTab:AddTextbox({
    Name = "Enter Key",
    Default = "",
    TextDisappear = true,
    Callback = function(Value)
        setclipboard(GroupLink)
        print("¡Enlace del grupo copiado al portapapeles!")
    end
})

-- Botón para copiar el enlace del grupo
KeyTab:AddButton({
    Name = "Get Key",
    Callback = function()
        setclipboard(GroupLink)
        print("¡Enlace del grupo copiado al portapapeles!")
    end    
})

-- Botón para verificar la key (puedes añadir lógica adicional si es necesario)
KeyTab:AddButton({
    Name = "Check Key",
    Callback = function()
        print("¡Verificando la key!")
        -- Aquí puedes agregar lógica para validar la key
    end    
})

OrionLib:Init()
