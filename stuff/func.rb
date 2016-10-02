#all function/classes are stored

#functions
def start_game
  system ('steam steam://rungameid/48700')
end
def clear_Layout
  system ('clear')
end

#classes
class Module

def switch_Native
  system ('echo "Native" > ~/.mbwarband/last_module_warband') #edit last_module_warband to native
end
def switch_Viking
  system ('echo "Viking Conquest" > ~/.mbwarband/last_module_warband')
end
def switch_Napoleon
  system ('echo "Napoleonic Wars" > ~/.mbwarband/last_module_warband')
end

end

class Cheat

  def turn_on
    system ('sed -i -e 29c"cheat_mode = 1" ~/.mbwarband/rgl_config.txt')
  end
  def turn_off
    system ('sed -i -e 29c"cheat_mode = 0" ~/.mbwarband/rgl_config.txt')
  end

end
