#All styles/Layouts are stored here
class Styles

def menu_basic
  clear_Layout
  puts "-----------------------------------------------------------".yellow
  puts "Modul aussuchen = 1                                        ".red
  puts "Cheats Aktivieren/Deaktivieren = 2                         ".red
  puts "Starten = 3                                                ".red
  puts "use strg+c to leave!                                       ".red
  puts "-----------------------------------------------------------".yellow
  print ":".green
end
def menu_cheat
  clear_Layout
  puts "-------------------------------------------------------".yellow
  puts "Cheat activate = 1                                     ".red
  puts "Cheat deactivate = 2                                   ".red
  puts "-------------------------------------------------------".yellow
end
def menu_modul
  clear_Layout
  puts "            Which modul you want to start?                 ".colorize(:blue)
  puts "Native = 1                                                 ".red
  puts "Viking Conquest = 2                                        ".red
  puts "Napoleonic Wars = 3                                        ".red
  puts "Other = 4                                                  ".red
  print "module number:".green
end

end

class Style4func
  def menu_basic
    input = gets.chomp

    case input
    when "1"
      Layout.menu_modul
    when "2"
      Layout.menu_cheat
    when "3"
      start_game
    end

  end

  def menu_cheat
    input = gets.chomp

    case input
    when "1"
      Cheat.turn_on
    when "2"
      Cheat.turn_off
    end

  end

 def menu_modul
  input = gets.chomp

  case input
  when "1"
    Module.switch_Native
  when "2"
    Module.switch_Viking
  when "3"
    Module.switch_Napoleon
  when "4"
    puts "In work "
    Layout.menu_modul
  end

 end
end
