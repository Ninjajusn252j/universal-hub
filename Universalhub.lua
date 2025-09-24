-- Key System Script by DarkEclipse252j--
-- Contenido de https://raw.githubusercontent.com/Ninjajusn252j/scripts-discord/main/scripts/gonzalo01034.lua

-- No necesitas definir 'GroupLink' aquí, ya que se toma de _G.Config.GroupLink

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/weakhoes/Roblox-UI-Libs/refs/heads/main/Orion%20Lib/Orion%20Lib%20Source.lua')))()

local Window = OrionLib:MakeWindow({
    Name = " Key System",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "OrionTest",
    IntroEnabled = true,
    IntroText = "loading...",
    IntroIcon = "rbxassetid://88159629854210",
    Icon = "rbxassetid://88159629854210"
})

local KeyTab = Window:MakeTab({
    Name = "Key",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- Etiquetas
KeyTab:AddLabel("Únete a nuestro grupo de Roblox para obtener la key permanente")
KeyTab:AddLabel("Dale a get key para copia el enlace del grupo")

KeyTab:AddTextbox({
    Name = "Enter Key",
    Default = "",
    TextDisappear = true,
    Callback = function(Value)
        setclipboard(GroupLink)
        setclipboard(_G.Config.GroupLink) -- ¡Accede a GroupLink desde _G.Config!
        OrionLib:MakeNotification({
            Name = "Key System",
            Content = "dale a get key",
            Content = "Dale a get key",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
    end
})

-- Botón para copiar el enlace del grupo
KeyTab:AddButton({
    Name = "Get Key",
    Callback = function()
        setclipboard(GroupLink)
        setclipboard(_G.Config.GroupLink) -- ¡Accede a GroupLink desde _G.Config aquí también!
        OrionLib:MakeNotification({
            Name = "Key System",
            Content = "Enlace de la key copiado, ¡ve y pégalo en el navegador!",
@@ -51,17 +54,16 @@
    end
})


KeyTab:AddButton({
    Name = "Check Key",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "Key System",
            Content = "ERROR REVISE SU KEY O SU EXECUTOR!",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
    end
})

OrionLib:Init()
