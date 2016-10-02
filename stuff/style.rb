class Grafik

  def layout_u #Banner
  puts "          Mount and Bley-bley Launcher by Josqu            ".red.on_blue.blink
  puts "-----------------------------------------------------------".yellow
  end

  def menu
  	clear
  puts "Modul aussuchen = 1                                        ".red
  puts "Cheats Aktivieren/Deaktivieren = 2                         ".red
  puts "Starten = 3                                                ".red
  puts "use strg+c to leave!                                       ".red
  puts "-----------------------------------------------------------".yellow
  print ":".green
  end

  def modul_menu
  	clear
  puts "            Which modul you want to start?                 ".colorize(:blue)
  puts "Native = 1                                                 ".red
  puts "Viking Conquest = 2                                        ".red
  puts "Napoleonic Wars = 3                                        ".red
  puts "Other = 4                                                ".red
  print "module number:".green
  end

  def cheat_menu
  	clear
  	puts "Cheat activate = 1                                     ".red
  	puts "Cheat deactivate = 2                                   ".red
  	puts "-----------------------------------------------------------".yellow
  end

end
