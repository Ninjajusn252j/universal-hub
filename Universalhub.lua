local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/UI-Interface/CustomFIeld/main/RayField.lua'))()

local Window = Rayfield:CreateWindow({
    Name = "Universal Hub",
    LoadingTitle = "Cargando Universal Hub...",
    LoadingSaving = {
        Enabled = true,
        FolderName = "UniversalHub", -- Cambia el nombre de la carpeta si es necesario
        FileName = "Config"
    },
    KeySystem = false,
})

local Tab = Window:CreateTab("Tab Example", 4483362458) -- Título, Imagen

-- Corrigiendo los labels para ajustarse a la documentación
local Label = Tab:CreateLabel("Necesitas unirte a nuestro grupo de Roblox para usar este script.")
local Label1 = Tab:CreateLabel("Pulsa el botón para copiar el enlace de nuestro grupo y pégalo en tu navegador.")

-- Enlace del grupo
local GroupLink = "https://roblox.com.py/groups/800270751/" -- Reemplaza "GRUPO_ID" con el ID real de tu grupo

-- Botón para copiar el enlace
local Button = Tab:CreateButton({
   Name = "Copiar enlace del grupo",
   Callback = function()
        setclipboard(GroupLink) -- Copia el enlace al portapapeles
        print("¡Enlace del grupo copiado al portapapeles!")
   end,
})
