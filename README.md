# Delta Version X Plugin Library
This is the Delta X APIs for your custom features.

You can view the sample code [here](https://github.com/AZYsGithub/DeltaXPlugin/blob/main/example.lua).

## Getting Started
To access it, we have exposed a global table called `delta`. You can use `getgenv().delta` or simply `delta` to access it.
```lua
getgenv().delta
```

This table contains sections and methods that can be called.

## Adding a Tab
To add a tab to the main menu, you can use the following code:
```lua
delta:AddTab("Name", "--Text In Textbox")
```
Example:
![example](hi.com)
**Note: New tab will auto focussed/opened**
## Adding a Suggestion Script
In Delta, we have a script suggestion feature in the main menu, but you can customize it. Here's an example:
```lua
delta:SetCurrentSuggestionScript("Name", "Description", function()
  print("Clicked!")
end)
```

## Saved Scripts (Adding a Script to the Local Script Section)
To add a script to the local saved script section, you can use the following code:
```lua
delta:SaveScript("Name", "print('hi')", "Tag")
```
**NOTE:** This only adds the script in Delta local script menu and it won't be saved. To save it, use `writefile()` to create a file and add it to local storage. The saved scripts file should be placed in `workspace/d_android_script_dir`.

## Settings
This section is for configuring the plugin settings.

### Adding a Button
To add a button for your plugin, you can include the following code in your plugin:
```lua
delta.Settings:AddButton("Print Hello", "Prints 'Hello' in your console.", function()
  print("Hello")
end)
```

### Adding a Switch
To add a switch for your plugin, you can include the following code in your plugin:
```lua
delta.Settings:AddSwitch("Toggle", "Just a toggle.", false, function(state)
  if state then
    print("Enabled")
  else
    print("Disabled")
  end
end)
```
**NOTE:** The `state` argument in the function is a boolean that represents whether it is enabled or not. The `false` boolean at the third argument represents whether it is enabled by default or not.

### Adding an Input
To add an input for your plugin, you can include the following code in your plugin:
```lua
delta.Settings:AddInput("Print Input", "Prints what you put in your textbox.", function(text)
  print(text)
end)
```
**NOTE:** The `text` argument represents the text from the user input.

### Adding a Dropdown
To add a dropdown for your plugin, you can include the following code in your plugin:
```lua
delta.Settings:AddDropdown("Dropdown", "Just custom features for the plugin", {"1", "2", "3"}, function(selected)
  if selected == "1" then
    print("It's One!")
  elseif selected == "2" then
    print("It's Two!")
  elseif selected == "3" then
    print("It's Three!")
  end
end)
```

## How to Install the Plugin?
It's simple. The plugin code is executed, so anything inside your plugin code will be executed.

## Where is the Folder for the Delta Plugin Saved and Executed?
The folder for the Delta Plugin is saved and executed at `workspace/DeltaPlugins`.
Anything that was file in that folder going to executed.

## Credits
This was made by the DeltaTeam, especially `1tsfvckinglxnny` and `.chillz.`.
