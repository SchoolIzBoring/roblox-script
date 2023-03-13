local ChatService = game:GetService("Chat")
local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Define the responses to different messages
local responses = {
    ["hi"] = "Hi there!",
    ["hello"] = "Hello! How are you doing?",
}

-- Listen for messages from the player
ChatService:RegisterChatCallback(Enum.ChatCallbackType.OnClientChat, function(message, playerWhoSent)
    if playerWhoSent == player then
        -- Check if the message is in the responses table
        local response = responses[message:lower()]
        if response then
            -- Send a message back to the player
            ChatService:ChatPartiallyFiltered(response, Enum.ChatColor.Blue)
        end
    end
end)
