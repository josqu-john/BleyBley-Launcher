#All styles/Layouts are stored here
class Styles

def menu_basic
  puts "Modul aussuchen = 1                                        ".red
  puts "Cheats Aktivieren/Deaktivieren = 2                         ".red
  puts "Starten = 3                                                ".red
  puts "use strg+c to leave!                                       ".red
  puts "-----------------------------------------------------------".yellow
  print ":".green
end
def menu_cheat
  puts "Cheat activate = 1                                     ".red
  puts "Cheat deactivate = 2                                   ".red
  puts "-------------------------------------------------------".yellow
end
def menu_modul
  puts "            Which modul you want to start?                 ".colorize(:blue)
  puts "Native = 1                                                 ".red
  puts "Viking Conquest = 2                                        ".red
  puts "Napoleonic Wars = 3                                        ".red
  puts "Other = 4                                                ".red
  print "module number:".green
end

end
