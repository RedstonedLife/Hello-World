package me.Example.ExamplePlugin;

import org.bukkit.*;

public class Main_Example extends JavaPlugin {
    
    // OnEnable Methond, It runs 1 time when the plugin starts/boots up
    public onEnable() {
        System.out.println("PluginName is enabled!");
    }
    
    // OnDisable method, It runs 1 time when the plugin is stopping
    public onDisable() {
        System.out.println("PluginName is disabled!");
    }
    
}
