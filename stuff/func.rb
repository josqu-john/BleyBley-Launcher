#all function/classes are stored
#functions
def start_game #start the game over steam (could take a few of time)
  system ('steam steam://rungameid/48700')
end
def clear_Layout # clear the Console
  system ('clear')
end

#classes
class Module # class for Modules primaly use for switching the modules

def switch_Native #edit last_module_warband to native
  system ('echo "Native" > ~/.mbwarband/last_module_warband')
end
def switch_Viking #edit last_module_warband to Viking Conquest
  system ('echo "Viking Conquest" > ~/.mbwarband/last_module_warband')
end
def switch_Napoleon # edit last last_module_warband to Napoleonic Wars
  system ('echo "Napoleonic Wars" > ~/.mbwa rband/last_module_warband')
end

end


class Cheat # class for cheats primaly use for turn cheats on/off.

  def turn_on # turn cheats on
    system ('sed -i -e 29c"cheat_mode = 1" ~/.mbwarband/rgl_config.txt')
    $cheat_status = "true"
  end

  def turn_off # turn cheats off
    system ('sed -i -e 29c"cheat_mode = 0" ~/.mbwarband/rgl_config.txt')
    $cheat_status = "false"
  end

  def show
    print $cheat_status
  end

end
