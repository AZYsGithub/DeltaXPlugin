-- To load this, save this file into workspace/DeltaPlugins folder.

-- Adding a tab to the main menu
delta:Add("MyTab", "--Custom Tab")

-- Adding a custom suggestion script
delta:SetCurrentSuggestionScript("MySuggestion", "A custom suggestion", function()
  print("Suggestion clicked!")
end)

-- Adding a script to the local saved script section
delta:SaveScript("MyScript", "print('Hello from my script')", "MyTag")

-- Adding a button to plugin settings
delta.Settings:AddButton("Print Hello", "Prints 'Hello' in your console.", function()
  print("Hello")
end)

-- Adding a toggle switch to plugin settings
delta.Settings:AddSwitch("Switch", "Just a toggle.", false, function(state)
  if state then
    print("Enabled")
  else
    print("Disabled")
  end
end)

-- Adding an input field to plugin settings
delta.Settings:AddInput("Print Input", "Prints what you put in your textbox.","none", function(text)
  print("Input:", text)
end)

-- Adding a dropdown to plugin settings
delta.Settings:AddDropdown("Dropdown", "Just custom features for the plugin", {"1", "2", "3"}, function(selected)
  if selected == "1" then
    print("It's One!")
  elseif selected == "2" then
    print("It's Two!")
  elseif selected == "3" then
    print("It's Three!")
  end
end)
